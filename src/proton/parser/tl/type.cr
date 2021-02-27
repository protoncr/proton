module Proton::Parser
  class Type
    # The namespace components of the type.
    property namespace : Array(String)

    # The name of the type.
    property name : String

    # Whether this type is bare or boxed.
    property bare : Bool

    # Whether the type name refers to a generic definition.
    property generic_ref : Bool

    # The generic argument's type, if `generic_ref` is true.
    property generic_arg : Type?

    def initialize(@namespace, @name, @bare = false, @generic_ref = false, @generic_arg = nil)
    end

    def self.parse(str : String)
      # parse `!type`
      ty, generic_ref = str.starts_with?('!') ? {str[1..], true} : {str, false}

      # parse `type<generic_arg>`
      ty, generic_arg = if (pos = ty.index('<'))
                          if ty.ends_with?('>')
                            {ty[..pos - 1], Type.parse(ty[(pos + 1)..-2])}
                          else
                            raise ParamParseError::InvalidGeneric.new
                          end
                        else
                          {ty, nil}
                        end

      # parse `ns1.ns2.name`
      namespace = ty.split('.')
      namespace.each do |ns|
        raise ParamParseError::Empty.new if ns.strip.empty?
      end

      # get then name back out of the namespace
      name = namespace.pop

      # check if this is a bare type (lowercase first char)
      bare = name.chars[0].ascii_lowercase?

      Type.new(namespace, name, bare, generic_ref, generic_arg)
    end

    # def vector?
    #   @name.match(/[Vv]ector/)
    # end

    # def inner_type
    #   name = @name
    #   ns = @namespace.map(&.camelcase).join("::")
    #   ns = "Root" if ns.empty?

    #   if vector?
    #     name = @generic_arg.not_nil!.name
    #   end

    #   result = {
    #     "int":    "Int32",
    #     "long":   "Int64",
    #     "int128": "TL::I128",
    #     "int256": "TL::I256",
    #     "double": "Float64",
    #     "string": "String",
    #     "date":   "Time?", # nil date = 0 timestamp
    #     "bytes":  "Bytes",
    #     "Bool":   "Bool",
    #     "true":   "Bool",
    #     "X":      "Bytes",
    #   }.fetch(name, [ns, name.camelcase].join("::"))

    #   if vector?
    #     result = "Array(#{result})"
    #   end

    #   result
    # end

    def find_generic_refs
      output = [] of String

      if @generic_ref
        output << @name
      end

      if arg = @generic_arg
        output.concat(arg.find_generic_refs)
      end

      output
    end

    def ==(other)
      other.is_a?(Type) &&
        @namespace == other.namespace &&
        @name == other.name &&
        @bare == other.bare &&
        @generic_ref == other.generic_ref &&
        @generic_arg == other.generic_arg
    end

    def to_s(io)
      @namespace.each do |ns|
        io << "#{ns}."
      end
      if @generic_ref
        io << "!"
      end
      io << @name
      if arg = @generic_arg
        io << "<#{generic_arg}>"
      end
    end
  end
end
