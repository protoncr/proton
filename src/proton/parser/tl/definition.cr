module Proton::Parser
  class Definition
    # The namespace components of the definition. This list will be empty
    # if the name of the definition belongs to the global namespace.
    property namespace : Array(String)

    # The name of this definition. Also known as "predicate" or "method".
    property name : String

    # The numeric identifier of this definition.
    #
    # If a definition has an identifier, it overrides this value.
    # Otherwise, the identifier is inferred from the definition.
    property id : UInt32

    # A possibly-empty list of parameters this definition has.
    property params : Array(Parameter)

    # The type to which this definition belongs.
    property type : Type

    # The category to which this definition belongs
    property category : Category

    # A description for this definition
    property description : String

    def initialize(@namespace, @name, @id, @params, @type, @category, @description = "")
    end

    def self.parse(str : String)
      raise ParamParseError::Empty.new if str.strip.empty?

      # Strip trailing `;`
      str = str[..-2] if str.ends_with?(';')

      # parse `(left = ty)`
      begin
        left, ty = str.split('=', 2).map(&.strip)
      rescue err : IndexError
        raise ParamParseError::MissingDef.new
      end

      begin
        ty = Type.parse(ty)
      rescue err : ParamParseError
        raise ParamParseError::MissingDef.new
      end

      # parse `name middle`
      name, middle = left.includes?(' ') ? left.split(/\s+/, 2) : {left, ""}

      # parse `name#id`
      name, id = name.includes?('#') ? name.split('#', 2) : {name, nil}

      # parse `ns1.ns2.name`
      namespace = name.split('.')
      namespace.each do |ns|
        raise ParseError::MissingName.new if ns.strip.empty?
      end

      # get then name back out of the namespace
      name = namespace.pop

      # parse `id`
      case id
      when Nil
        id = Parser::Utils.infer_id(str)
      else
        begin
          id = id.strip.to_u32(16)
        rescue err : ArgumentError
          raise ParseError::InvalidID.new
        rescue err : ParseError::NotImplemented
          raise ParseError::NotImplemented.new
        rescue err
          raise ParseError::InvalidParam.new(err.message)
        end
      end

      type_defs = [] of String
      flag_defs = [] of String

      # parse `middle`
      params = middle
        .split(/\s+/)
        .reject(&.empty?)
        .map do |s|
          begin
            param = Parameter.parse(s)
          rescue err : ParamParseError::TypeDef
            type_defs << err.name
            next nil
          end

          # If the parameter is a flag definition save both
          # the definition and the parameter.
          if param.type.is_a?(FlagsParam)
            flag_defs << param.name
            next param
          end

          # If the parameter type is a generic ref ensure it's valid.
          if param.type.is_a?(NormalParam)
            if param.type.as(NormalParam).type.generic_ref && !type_defs.includes?(param.type)
              raise ParamParseError::MissingDef.new
            else
              next param
            end
          end

          # If the parameter type references a flag ensure it's valid
          if param.type.is_a?(NormalParam)
            if flag = param.type.as(NormalParam).flag
              if flag_defs.includes?(flag.name)
                next param
              else
                raise ParamParseError::MissingDef.new
              end
            end
          end

          # Any other parameter that's okay should just be passed as-is.
          next param
        end.compact

      # The type lacks `!` so we determine if it's a generic one based
      # on whether its name is known in a previous parameter type def.
      if type_defs.includes?(ty.name)
        ty.generic_ref = true
      end

      Definition.new(namespace, name, id, params, ty, Category::Types)
    end
  end
end
