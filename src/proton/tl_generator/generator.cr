require "log"
require "crinja"
require "file_utils"
require "compiler/crystal/tools/formatter"
require "./templating"

module Proton::Generator
  extend self

  Log = ::Log.for(self)

  # :nodoc:
  CRINJA_CONFIG = Crinja::Config.new(trim_blocks: false, lstrip_blocks: true)

  CORE_TYPES = {
    0xbc799737, # boolFalse#bc799737 = Bool;
    0x997275b5, # boolTrue#997275b5 = Bool;
    0x3fedd339, # true#3fedd339 = True;
    0xc4b9f9bb, # error#c4b9f9bb code:int text:string = Error;
    0x56730bcc, # null#56730bcc = Null;
  }

  PRIMITIVE_SUPER_CLASSES = ["Bool", "True", "Null"]
  PRIMITIVE_TYPES         = ["int", "int53", "int128", "int256", "long", "double", "bytes", "string", "true", "date", "vector", "Vector", "!X"]
  OPTIONAL_KEYS           = ["; may be null", "; may be empty", "for bots only", "pass null", "if known", "if available"]

  def extract_layer(file : String)
    lines = file.lines
    lines.each do |line|
      return $1.to_i if line =~ /^\/\/\s*LAYER\s*(\d+)/
    end
  end

  def generate_tl_types(
    output_dir : String,
    definitions : Array(TLParser::Definition),
    layer : Int32,
    *,
    module_root : String = "Proton::TL"
  )
    types_dir = File.join(output_dir, "types")
    defs = definitions.reject { |d| d.id.in?(CORE_TYPES) }
    ns_defs = defs.group_by { |d| d.namespace }
    namespaces = definitions.map(&.namespace).uniq.sort

    Dir.mkdir_p(output_dir)
    Dir.mkdir_p(types_dir)

    # Iterate over the templates and generate a file for each one.
    Dir["#{__DIR__}/templates/**/*"].each do |file|
      next unless File.file?(file)

      ext = File.extname(file)
      dirname = Path[File.dirname(file)].relative_to(Path[__DIR__, "templates"]).normalize
      Dir.mkdir_p(Path[output_dir, dirname])

      if ext == ".j2"
        basename = File.basename(file, ext)
        next if basename == "ns_file.cr"

        raw_file = File.read(file)
        rendered = Crinja.render(raw_file, {
          depth: dirname == "." ? 0 : dirname.parts.size,
          defs:  defs,
        }, config: CRINJA_CONFIG)

        output_file = Path[output_dir, dirname, basename].normalize
        File.write(output_file, rendered)
      else
        basename = File.basename(file)
        output_file = Path[output_dir, dirname, basename].normalize
        FileUtils.cp(file, output_file)
      end
    end

    # Write definitions for each namespace in their own file.
    # Namespace definitions will be located at <types_dir>/<namespace>.cr.
    ns_defs.each do |ns, defs|
      # Stringify the namespace to make things simpler
      namespace = ns.map(&.camelcase).join("::")

      # Create a map of all class types in a namespace. The "type" is basically the parent
      # type, but not really ideally suited for inheritance.
      #
      # Namespace              Type    Definitions
      # String     =>    Hash(String, Array(String))
      ns_types = defs.each_with_object({} of String => Hash(String, Array(TLParser::Definition))) do |defn, map|
        type = defn.type.name.to_s
        next map if type.in?(PRIMITIVE_TYPES + PRIMITIVE_SUPER_CLASSES)
        map[namespace] ||= {} of String => Array(TLParser::Definition)
        map[namespace][type] ||= [] of TLParser::Definition
        map[namespace][type] << defn
      end

      # Create a map of all referenced namespaces in a namespace. This is just for importing purposes.
      ns_references = defs.each_with_object({} of String => Array(String)) do |defn, map|
        map[namespace] ||= [] of String
        map[namespace].push(defn.namespace.join("/")) unless defn.namespace == ns
        map[namespace].push(defn.type.namespace.join("/")) unless defn.type.namespace == ns
        defn.params.each do |param|
          next unless param.type.is_a?(TLParser::NormalParam)
          type = param.type.as(TLParser::NormalParam).type
          map[namespace].push(type.namespace.join("/")) unless type.namespace == ns
        end
        map[namespace].uniq!
      end

      ns_dir = types_dir
      ns_file = ns.size == 0 ? "root.cr" : "#{ns.last}.cr"
      template = File.read(File.join(__DIR__, "templates", "types", "ns_file.cr.j2"))
      depth = 1

      # If the namespace has multiple parts, create a subdirectory for it
      if ns.size > 1
        ns_file = ns.pop + ".cr"
        ns_dir = File.join(types_dir, ns.join("/"))
        Dir.mkdir_p(ns_dir)
        depth = ns.size + 1
      end

      File.open(File.join(ns_dir, ns_file), "w") do |f|
        rendered = Crinja.render(template, {
          depth:         depth,
          namespace:     namespace,
          namespaces:    namespaces,
          module_root:   module_root,
          definitions:   defs.sort_by { |d| d.category },
          ns_types:      ns_types,
          ns_references: ns_references,
        }, config: CRINJA_CONFIG)
        formatted = Crystal.format(rendered, ns_file)
        f.puts(formatted)
      end
    end
  end
end
