require "file_utils"
require "http/client"

BASE_DIR = "src/proton/types"
TD_API_TL_LOCATION = "https://raw.githubusercontent.com/tdlib/td/v1.5.0/td/generate/scheme/td_api.tl"

struct TLEntry
  property class_name : String = ""
  property parent_class_name : String = "Base"
  property optional : Bool = true
  property description : String = ""
  property arguments = {} of String => NamedTuple(type: String, description: String, optional: Bool)
end


def parse_tl_type(type)
  if (vector = type.scan(/[vV]ector<(.*)>/)).size > 0
    "::Array(#{parse_tl_type(vector[0][1])})"
  elsif (int = type.scan(/[iI]nt(\d+)/)).size > 0
    size = int[0][1].to_i
    size = size <= 32 ? 32 : 64
    "::Int#{size}"
  elsif type =~ /[dD]ouble/
    "::Float64"
  elsif type =~ /[bB]ytes/ || type =~ /[sS]tring/
    "::String"
  elsif type =~ /[bB]ool/
    "::Bool"
  else
    "Proton::Types::#{type.camelcase}"
  end
end

def parse_argument_description(argument, description)
  statements = description.split("; ")[1..-1]

  if statements.size == 0
    statements = description.split(", ")[1..-1]
  end

  optional = nil

  if statements.size > 0
    statements.each do |statement|
      statement = statement.downcase

      if statement =~ /(can be null|may be null|can be empty|may be empty|optional|if empty|empty until|empty for|if available)/
        optional = true
      elsif statement =~ /(must be non-empty)/
        optional = false
      end
    end
  end


  {
      argument, {
          type: "",
          description: description,
          optional: !!optional
      }
  }
end

def parse_tl_entry(tl_entry)
  entry = TLEntry.new

  # A fix for multiline comments
  tl_entry = tl_entry.gsub("\n//-", " ").strip

  tl_entry.split("\n").each do |line|
    if line.starts_with?("//")
      line.sub("//@", "").split(" @").each do |at_statement|
        if at_statement.starts_with?("class")
          entry.class_name = at_statement[6..-1]
        elsif at_statement.starts_with?("description")
          entry.description = at_statement[12..-1]
        elsif at_statement.starts_with?("param_description")
          key, arg = parse_argument_description("description", at_statement[18..-1])
          entry.arguments[key] = arg
        else
          argument = at_statement.split(' ')[0]
          description = at_statement[(argument.size + 1)..-1]

          key, arg = parse_argument_description(argument, description)
          entry.arguments[key] = arg
        end
      end
    else
      args, super_class = line.sub(";", "").split(" = ")
      args = args.split(" ")

      entry.class_name = args[0]
      entry.parent_class_name = super_class

      args = (args[1..-1] || [] of String).map do |a|
        arg, type = a.split(':')

        entry.arguments[arg] = entry.arguments[arg].merge({ type: parse_tl_type(type) })
      end
    end
  end

  if !entry.parent_class_name || entry.class_name.downcase == entry.parent_class_name.downcase
    entry.parent_class_name = "Base"
  end

  entry
end

def normalize_class_name(class_name, super_class_name)
  class_name = class_name.camelcase

  case super_class_name
  when "ChatEventAction"
    class_name.sub("ChatEvent", "")
  when "InputMessageContent"
    class_name.sub("InputMessage", "")
  when "MessageContent"
    class_name.sub("Message", "")
  else
    class_name
  end
end

def build_lookup_table(classes)
  lookup_table = {} of String => String

  classes.each do |c|
    class_name       = normalize_class_name(c.class_name, c.parent_class_name)
    super_class_name = c.parent_class_name.camelcase

    unless super_class_name == "Base"
      class_name = "Types::#{super_class_name}::#{class_name.sub(super_class_name, "").camelcase}"
      key_name = c.class_name.camelcase(lower: true)
      lookup_table[key_name] = class_name
    end
  end

  lookup_table
end

def build_hierarchy(classes : Array(TLEntry))
  hierarchy = {} of String => Array(String)

  classes.each do |c|
    hierarchy[c.parent_class_name] ||= [] of String
    hierarchy[c.parent_class_name].push(normalize_class_name(c.class_name, c.parent_class_name))
  end

  hierarchy
end

# Splits tl file into usable chunks. Usually starts with a SuperClass followed by subclasses.
def split_tl_file(tl_file, range = 0..-1)
  # A fix for some entries (mainly chatAction ones) having a different structure from the rest
  tl_file = tl_file.gsub(";\n//", ";\n\n//")

  tl_file.split("\n\n\n")[range].map { |e| e.split("\n\n") }.flatten
end

def wrap_params(param_string, max_length, indent_num)
  if param_string.size > max_length
    param_string.gsub(/(.{1,#{max_length}})(\s+|$)/, "\\1\n#{" " * indent_num}").strip
  else
    param_string
  end
end

def wrap_comment(comment, indent = "  ", line_width = 117,
                 start_sequence = "#{indent}# ",
                 first_start_sequence = start_sequence,
                 break_sequence = "\n#{indent}#   ")
  comment.split(". ").map_with_index do |sentence, i|
    this_start_sequence = i == 0 ? first_start_sequence : start_sequence

    line = "#{this_start_sequence}#{sentence}.".split("\n").map_with_index do |line, j|
      this_line_width = j == 0 ? line_width + 2 : line_width

      line.size > this_line_width ? line.gsub(/(.{1,#{this_line_width}})(\s+|$)/, "\\1#{break_sequence}") : line
    end.join(break_sequence)

    if line.ends_with?(break_sequence)
     line = line[0..-(break_sequence.size + 1)]
    end

    line
  end.join("\n")
end

def attrs_to_doc_comment(attrs)
  attrs.map do |attr, info|
    type = info[:type]
    description = info[:description]

    wrap_comment(description, "  ",
      first_start_sequence: "  # #{attr} [#{type}#{", nil" if info[:optional]}] ",
      start_sequence: "  #   ",
      break_sequence: "\n  #   ")
  end.join("\n")
end

def run
  puts "Generating TDLib types using #{TD_API_TL_LOCATION}"
  puts "Type classes will be placed in #{BASE_DIR}"

  puts "MKDIR '#{BASE_DIR}'"
  FileUtils.mkdir_p(BASE_DIR)

  puts "Parsing #{TD_API_TL_LOCATION}"
  response = HTTP::Client.get(TD_API_TL_LOCATION)
  classes, functions = response.body.split("\n\n---functions---\n\n")

  # First entry in td_api.tl is typecasting, it's worthless for us.
  # Last entry before functions is a testing class, once again worthless
  classes = split_tl_file(classes, 1..-2)

  # Last function in td_api.tl is for testing, another worthless thing for us
  functions = split_tl_file(functions, 0..-2)

  puts "Crystalizing classes"

  classes = classes.map { |c| parse_tl_entry(c) }
  class_names = classes.map { |c| normalize_class_name(c.class_name, c.parent_class_name) }
  class_hierarchy = build_hierarchy(classes)
  lookup_table = build_lookup_table(classes)

  classes.each do |class_info|
    class_name = normalize_class_name(class_info.class_name, class_info.parent_class_name)
    attributes = class_info.arguments
    description = class_info.description
    super_class_name = class_info.parent_class_name.camelcase

    if subclasses = class_hierarchy[class_info.class_name]?
      require_statements = subclasses
        .map { |c| c.sub(class_name, "").underscore }
        .map { |type|
          "require \"./#{class_name.underscore}/#{type}\""
        }.join("\n")
      is_abstract = true
    else
      require_statements = ""
      is_abstract = false
    end

    if super_class_name == "Base"
      file_name = class_name.underscore
      class_name = "#{class_name} < Types::Base"
    else
      file_name = "#{super_class_name.underscore}/#{class_name.sub(super_class_name, "").underscore}"
      class_name = "#{super_class_name}::#{class_name.sub(super_class_name, "").camelcase} < Types::#{super_class_name}"

      file_dir = File.join(BASE_DIR, super_class_name.underscore)
      unless Dir.exists?(file_dir)
        puts "MKDIR '#{file_dir}'"
        FileUtils.mkdir_p(file_dir)
      end
    end

    if attributes.empty?
      attributes_doc = ""
      initializer_attributes = ""
      attributes = ""
    else
      attributes_doc = "\n" + attrs_to_doc_comment(attributes)
      initializer_attributes = attributes.to_a
        .sort_by { |(attr, info)| info[:optional] ? 1 : 0 }
        .map do |attr, info|
          "@#{attr} : #{info[:type]}#{"? = nil" if info[:optional]}"
      end.join(", ")
      attributes = "\n    " + attributes.map do |attr, info|
        "property #{attr} : #{info[:type]}#{ "?" if info[:optional] }"
      end.join("\n    ")
    end

    unless description.empty?
      description = "\n#{wrap_comment(description, "  ")}"
    end

    klass = <<-CRYSTAL
    # This is an auto generated file. If something isn't working
    # correctly, see 'typegen.cr' in the project root

    #{"require \"./base\"" if super_class_name == "Base"}

    module Proton::Types#{description}#{attributes_doc}
      class #{class_name}#{attributes}

        def initialize(#{initializer_attributes})
        end
      end
    end

    #{require_statements}
    CRYSTAL

    output_file = File.join(BASE_DIR, file_name + ".cr")
    puts "Writing '#{output_file}'"
    File.write(output_file, klass, mode: "w")
  end

  puts "Writing base class"
  klass = <<-CRYSTAL
  # This is an auto generated file. If something isn't working
  # correctly, see 'typegen.cr' in the project root

  require "json"

  module Proton::Types

    abstract class Base
      include JSON::Serializable

      @[JSON::Discriminator(key: "@type", mapping: {#{lookup_table.map { |k, v| "#{k}: #{v}" }.join(",\n      ")}})]
      @[JSON::Field(key: "@type")]
      property tdtype : String
    end
  end
  CRYSTAL

  base_file_path = File.join(BASE_DIR, "base.cr")
  puts "Writing '#{base_file_path}'"
  File.write(base_file_path, klass, mode: "w")

  puts "Converting functions"

  functions = functions.map { |c| parse_tl_entry(c) }.sort_by { |c| c.class_name }
  functions = functions.map do |func|
    method_name = func.class_name.underscore
    params = func.arguments
    description = func.description
    return_class = "Proton::Types::#{func.parent_class_name.camelcase}"

    param_max_length = params.merge({"@type" => nil}).max_by { |k, _| k.size }[0].size

    if params.empty?
      params_doc = ""
      method_params = ""
      func_params = ""
    else
      params_doc = "\n" + attrs_to_doc_comment(params)

      method_params = params.to_a
        .sort_by { |(attr, info)| info[:optional] ? 1 : 0 }
        .map do |attr, info|
        "#{attr} : #{info[:type]}#{"?" if info[:optional]}#{ " = nil" if info[:optional] }"
      end.join(", ")

      method_params = "(#{method_params})"

      func_params = ",\n              " + params.map do |attr, info|
        indent = " " * (param_max_length - attr.size + 1)

        "\"#{attr}\"#{indent}=> #{attr}"
      end.join(",\n              ")
    end

    unless description.empty?
      description = wrap_comment(description, "  ")
    end

    <<-CRYSTAL
    #{description}
    ##{params_doc}
    def #{method_name}#{method_params} # : #{return_class}
      broadcast({"@type"#{" " * (param_max_length - 4)}=> "#{func.class_name}"#{func_params}})
    end
    CRYSTAL
  end

  klass = <<-CRYSTAL
  # This is an auto generated file. If something isn't working
  # correctly, see 'typegen.cr' in the project root

  module Proton::ClientMethods
    #{functions.join("  \n")}
  end
  CRYSTAL

  output_file = "src/proton/client_methods.cr"
  puts "Writing '#{output_file}'"
  File.write(output_file, klass, mode: "w")

  puts "Code generation is complete"
end

run
