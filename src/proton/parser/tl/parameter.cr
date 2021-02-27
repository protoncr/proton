module Proton::Parser
  class Parameter
    # The name of the parameter.
    property name : String

    # The type of the parameter.
    property type : ParamType

    def initialize(@name, @type)
    end

    def self.parse(str : String)
      # special case: parse `{X:Type}`
      if str.starts_with?('{')
        if str.ends_with?(":Type}")
          raise ParamParseError::TypeDef.new(str[1..(str.index(':').not_nil! - 1)])
        else
          raise ParamParseError::MissingDef.new
        end
      end

      # parse `name:type`
      begin
        name, ty = str.split(':', 2)
        raise ParamParseError::Empty.new if name.empty? || ty.empty?
      rescue err : IndexError
        raise ParamParseError::NotImplemented.new
      end

      Parameter.new(name, ParamType.parse(ty))
    end

    def ==(other)
      other.is_a?(Parameter) &&
        @name == other.name &&
        @type == other.type
    end
  end
end
