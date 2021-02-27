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
      def self.type_name(d : Proton::Parser::Definition, interface = false)
        String.build do |str|
          str << "I" if interface
          str << Crystalize.classify(d.name)
          case d.category
          when Parser::Category::Functions
            str << "Request"
          end
        end
      end

      def self.qual_name(d : Proton::Parser::Definition, interface = false)
        String.build do |str|
          if d.namespace.size > 0
            d.namespace.each do |ns|
              str << Crystalize.classify(ns)
              str << "::"
            end
          else
            str << "Root::"
          end
          str << type_name(d, interface)
        end
      end

      def self.variant_name(d : Proton::Parser::Definition, interface = false)
        name = type_name(d)
        type_name = Types.type_name(d.type, interface)

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

      def self.type_name(type : Proton::Parser::Type, interface = false)
        String.build do |str|
          str << "I" if interface
          str << Crystalize.classify(type.name)
        end
      end

      def self.qual_name(type : Proton::Parser::Type, interface = false)
        result =
          if name = builtin_type(type)
            name
          elsif type.generic_ref
            name = "TLObject"
          else
            name = String.build do |str|
              if type.namespace.size > 0
                type.namespace.each do |ns|
                  str << Crystalize.classify(ns)
                  str << "::"
                end
              else
                str << "Root::"
              end
              str << type_name(type, interface)
            end
          end

        if generic = type.generic_arg
          result += "(#{qual_name(generic, interface)})"
        end

        result
      end
    end

    module Parameters
      def self.qual_name(param : Proton::Parser::Parameter, interface = false)
        type = param.type
        case type
        when Proton::Parser::FlagsParam
          "UInt32"
        when Proton::Parser::NormalParam
          if type.flag && type.type.name == "true"
            "Bool"
          else
            result = Types.qual_name(type.type, interface)
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
