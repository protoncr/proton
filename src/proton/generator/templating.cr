# require "digest/crc32"
require "crinja"
require "tl_parser"

ACCEPTABLE_TYPES = {
  "string" => ["Bytes", "String", "IO"],
  "bytes" => ["Bytes", "String", "IO"],
  "!X" => ["Bytes", "String", "IO"],
  "date" => ["Int64", "Time"],
}

def classify(name : String)
  name.split('.').map(&.camelcase).join("::")
end

def fixed_param_name(name : String)
  case name
  when "out"
    "outgoing"
  when "self"
    "is_self"
  when "private"
    "is_private"
  else
    name.underscore
  end
end

def type_to_crystal(type : String)
  case type
  when "int"
    "Int32"
  when "long"
    "Int64"
  when "int128", "int256"
    "BigInt"
  when "double"
    "Float64"
  when "string", "bytes", "!X"
    "Bytes"
  when "Bool", "true"
    "Bool"
  when /^[Vv]ector<(.*)>/
    inner = type_to_crystal($1)
    "Array(#{inner})"
  else
    pieces = type.split('.').map(&->classify(String))
    if pieces.size == 1
      "Root::Type" + pieces[0]
    else
      pieces[0..-2].join("::") + "::Type" + pieces[-1]
    end
  end
end

@[Crinja::Attributes()]
class TLParser::Definition
  include Crinja::Object

  def crinja_attribute(attr : Crinja::Value) : Crinja::Value
    value = case attr.to_string
            when "namespace"
              namespace
            when "name"
              name
            when "id"
              id.to_i64
            when "params"
              params
            when "type"
              type
            when "category"
              category.to_s
            when "description"
              description
            else
              Crinja::Undefined.new(attr.to_s)
            end

    Crinja::Value.new(value)
  end
end

@[Crinja::Attributes()]
struct TLParser::Flag
  include Crinja::Object::Auto
end

@[Crinja::Attributes()]
struct TLParser::FlagsParam
  include Crinja::Object

  def crinja_attribute(attr : Crinja::Value) : Crinja::Value
    value = case attr.to_string
            when "_type"
              "flags"
            else
              Crinja::Undefined.new(attr.to_s)
            end

    Crinja::Value.new(value)
  end
end

@[Crinja::Attributes()]
struct TLParser::NormalParam
  include Crinja::Object

  def crinja_attribute(attr : Crinja::Value) : Crinja::Value
    value = case attr.to_string
            when "_type"
              "normal"
            when "type"
              type
            when "flag"
              flag
            else
              Crinja::Undefined.new(attr.to_s)
            end

    Crinja::Value.new(value)
  end
end

@[Crinja::Attributes()]
class TLParser::Parameter
  include Crinja::Object

  def optional
    type.is_a?(TLParser::NormalParam) && type.as(TLParser::NormalParam).flag
  end

  def crystal_type
    case type
    when TLParser::FlagsParam
      "#"
    when TLParser::NormalParam
      cast = type.as(TLParser::NormalParam)
      str = cast.type.to_s
      type_to_crystal(str)
    else
      Crinja::Undefined.new(type.to_s)
    end
  end

  def acceptable_types
    ACCEPTABLE_TYPES[type.to_s]? || [ crystal_type ]
  end

  def crinja_attribute(attr : Crinja::Value) : Crinja::Value
    value = case attr.to_string
            when "name"
              fixed_param_name(name)
            when "type"
              type
            when "acceptable_types"
              acceptable_types
            when "crystal_type"
              crystal_type
            when "optional"
              optional ? 1 : 0
            else
              Crinja::Undefined.new(attr.to_s)
            end

    Crinja::Value.new(value)
  end
end

@[Crinja::Attributes()]
class TLParser::Type
  include Crinja::Object::Auto

  def crystal_type
    type_to_crystal(to_s)
  end

  def acceptable_types
    ACCEPTABLE_TYPES[to_s]? || [ to_s ]
  end
end

class Crinja
  def config=(config : Crinja::Config)
    @config = config
  end

  module Filter
    Crinja.filter(:classify) { classify(target.to_s) }
    Crinja.filter({ lower: false }, :camelcase) { target.to_s.camelcase(lower: arguments["lower"].truthy?) }
    Crinja.filter({ pad_to: 0, capitalize: false }, :hex) do
      hex = target.to_s.to_u64.to_s(16)
      pad_to = arguments["pad_to"].to_i
      if pad_to > 0 && hex.size < pad_to
        hex = "0" * (pad_to - hex.size) + hex
      end
      hex = hex.upcase if arguments["capitalize"].truthy?
      "0x" + hex
    end
    Crinja.filter(:shl) { arguments.varargs[0].to_i << target.to_i }
    Crinja.filter(:shr) { target.to_i >> arguments.varargs[0].to_i }
    # Crinja.filter(:crc32) { Digest::CRC32.checksum(target.to_s) }
  end
end
