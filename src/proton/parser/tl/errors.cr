module Proton::Parser
  class ParamParseError < Exception
    # The parameter was empty.
    class Empty < ParamParseError; end

    # The flag specification was invalid.
    class InvalidFlag < ParamParseError; end

    # The generic argument was invalid.
    class InvalidGeneric < ParamParseError; end

    # The parameter is actually a generic type definition for later
    # use, such as `{X:Type}`, but it is not a parameter in itself.
    class TypeDef < ParamParseError
      getter :name

      def initialize(@name : String)
        super(@name)
      end
    end

    # The parameter refers to some unknown definition.
    class MissingDef < ParamParseError; end

    # The parser does not know how to parse the parameter.
    class NotImplemented < ParamParseError; end
  end

  class ParseError < Exception
    # The definition is empty.
    class Empty < ParseError; end

    # The identifier from this definition is invalid.
    class InvalidID < ParseError; end

    # One of the parameters from this definition was invalid.
    class InvalidParam < ParamParseError; end

    # The name information is missing from the definition.
    class MissingName < ParseError; end

    # The type information is missing from the definition.
    class MissingType < ParseError; end

    # The parser does not know how to parse the definition.
    class NotImplemented < ParseError; end

    # The file contained an unknown separator (such as `---foo---`)
    class UnknownSeparator < ParseError; end
  end
end
