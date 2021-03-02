module Proton::Generator
  class Metadata
    IGNORED_TYPES = {
      "Bool",
      "Vector",
    }

    getter ns_type_defs : Hash(Array(String), Hash(String, Array(Parser::Definition)))
    getter ns_cat_defs : Hash(Tuple(Array(String), Parser::Category), Array(Parser::Definition))
    getter cat_ns_defs : Hash(Parser::Category, Hash(Array(String), Array(Parser::Definition)))

    def initialize(definitions : Array(Parser::Definition))
      @ns_type_defs = {} of Array(String) => Hash(String, Array(Parser::Definition))
      @ns_cat_defs = {} of Tuple(Array(String), Parser::Category) => Array(Parser::Definition)
      @cat_ns_defs = {} of Parser::Category => Hash(Array(String), Array(Parser::Definition))

      definitions.sort { |a, b| a.name <=> b.name }.each do |d|
        next if d.type.name.in?(IGNORED_TYPES)

        type = Crystalize::Types.type_name(d.type, interface: true)

        if d.category == Parser::Category::Types
          @ns_type_defs[d.namespace] ||= {} of String => Array(Parser::Definition)
          @ns_type_defs[d.namespace][type] ||= [] of Parser::Definition
          @ns_type_defs[d.namespace][type] << d
        end

        @cat_ns_defs[d.category] ||= {} of Array(String) => Array(Parser::Definition)
        @cat_ns_defs[d.category][d.namespace] ||= [] of Parser::Definition
        @cat_ns_defs[d.category][d.namespace] << d

        @ns_cat_defs[{d.type.namespace, d.category}] ||= [] of Parser::Definition
        @ns_cat_defs[{d.type.namespace, d.category}] << d
      end
    end
  end
end
