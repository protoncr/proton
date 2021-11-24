require "json"
require "tl_parser"
require "option_parser"

record Schema, constructors : Array(Constructor), methods : Array(Method) do
  include JSON::Serializable
end

record Constructor, id : UInt32, predicate : String, params : Array(Parameter), type : String do
  include JSON::Serializable
end

record Method, id : UInt32, method : String, params : Array(Parameter), type : String do
  include JSON::Serializable
end

record Parameter, name : String, type : String do
  include JSON::Serializable
end

inputs = [] of String
output = nil

parser = OptionParser.parse do |parser|
  parser.banner = "Usage: tl-to-json [arguments]"

  parser.on("-i FILE", "--input=FILE", "Input file (or 'stdin' to pipe input from stdin)") do |file|
    inputs << file
  end

  parser.on("-o FILE", "--output=FILE", "Output file (or 'stdout' to output to stdout)") do |file|
    output = file
  end

  parser.on("-h", "--help", "Show this help") do
    puts parser
    exit
  end
end

if inputs.empty?
  puts "No input files given\n\n"
  puts parser
  exit
end

if !output
  puts "No output file given\n\n"
  puts parser
  exit
end

schema = Schema.new([] of Constructor, [] of Method)

inputs.each do |input|
  if input == "stdin"
    STDIN.read_timeout = 5
    begin
      input = STDIN.gets_to_end
    rescue ex : IO::TimeoutError
      puts "Failed to get input from stdin. Did you forget to use a pipe?"
      exit
    end
  else
    begin
      input = File.read(input.to_s)
    rescue ex : File::Error | IO::Error
      puts "Failed to open file '#{input}"
      puts ex.message
    end
  end

  iter = TLParser::Iter.new(input.to_s)

  loop do
    _def = iter.next rescue nil
    next if _def.nil?
    break if _def.is_a?(Iterator::Stop)

    case _def.category
    in TLParser::Category::Types
      schema.constructors << Constructor.new(
        id: _def.id,
        predicate: (_def.namespace + [_def.name]).join('.'),
        params: _def.params.map { |p| Parameter.new(p.name, p.type.to_s) },
        type: _def.type.to_s
      )
    in TLParser::Category::Functions
      schema.methods << Method.new(
        id: _def.id,
        method: (_def.namespace + [_def.name]).join('.'),
        params: _def.params.map { |p| Parameter.new(p.name, p.type.to_s) },
        type: _def.type.to_s
      )
    end
  end
end

if output == "stdout"
  puts schema.to_pretty_json
else
  File.write(output.to_s, schema.to_pretty_json)
end
