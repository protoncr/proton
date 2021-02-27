module Proton::Generator
  module Crystalize
    def self.classify(name)
      name = name.split('.').last
      name = name.underscore

      String.build do |str|
        name.chars.reduce(:upper) do |casing, c|
          if c == '_'
            next :upper
          end

          case casing
          when :upper
            str << c.upcase
            :lower
          when :lower
            str << c.downcase
            if c.ascii_uppercase?
              :lower
            else
              :preserve
            end
          when :preserve
            str << c
            if c.ascii_uppercase?
              :lower
            else
              :preserve
            end
          end
        end
      end
    end

    module Definitions
      def self.type_name(d : Proton::Parser::Definition)
        Crystalize.classify(d.name)
      end

      def self.qual_name(d : Proton::Parser::Definition)
        name = d.namespace.map(&->Crystalize.classify(String))
        name << "Root" if name.empty?
        name << type_name(d)
        name.join("::")
      end

      def self.variant_name(d : Proton::Parser::Definition)
        name = type_name(d)
        type_name = Types.type_name(d.type)

        variant = name.starts_with?(type_name) ? name[type_name.size..] : name

        case variant
        when .empty?
          # Use the name from the last uppercase character
          name[(name.chars.rindex(&.ascii_uppercase?) || 0)..]
        when "Self"
          # Use the name from the second-to-last uppercase letter
          name[(name.chars.first(name.size - variant.size).rindex(&.ascii_uppercase?) || 0)..]
        else
          variant
        end
      end
    end

    module Types
      def self.builtin_type(type : Proton::Parser::Type)
        case type.name.downcase
        when "bool", "true", "false"
          "Bool"
        when "bytes" ; "Bytes"
        when "double"; "Float64"
        when "int"   ; "Int32"
        when "int128"; "TL::I128"
        when "int256"; "TL::I256"
        when "long"  ; "Int64"
        when "string"; "String"
        when "vector"
          "Array"
        end
      end

      def self.type_name(type : Proton::Parser::Type)
        Crystalize.classify(type.name)
      end

      def self.qual_name(type : Proton::Parser::Type)
        result =
          if name = builtin_type(type)
            name
          elsif type.generic_ref
            name = "TLObject"
          else
            name = type.namespace.map(&->Crystalize.classify(String))
            name << "Root" if name.empty?
            name << Crystalize.classify(type.name)
            name.join("::")
          end

        if generic = type.generic_arg
          result += "(#{qual_name(generic)})"
        end

        result
      end
    end

    module Parameters
      def self.qual_name(param : Proton::Parser::Parameter)
        type = param.type
        case type
        when Proton::Parser::FlagsParam
          "UInt32"
        when Proton::Parser::NormalParam
          if type.flag && type.type.name == "true"
            "Bool"
          else
            result = Types.qual_name(type.type)
            if type.flag
              result += "?"
            end
            result
          end
        end
      end

      def self.attr_name(param : Proton::Parser::Parameter)
        name = param.name
        case name
        when "self"
          "is_self"
        when "private"
          "is_private"
        when "out"
          "outgoing"
        when "in"
          "incoming"
        else
          name.downcase
        end
      end
    end
  end
end
