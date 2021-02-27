module Proton::Generator
  class Metadata
    IGNORED_ABSTRACTS = {
      "Bool",
      "Vector",
    }

    getter ns_abstracts : Hash(Array(String), Array(String))
    getter cat_ns_defs : Hash(Parser::Category, Hash(Array(String), Array(Parser::Definition)))
    getter ns_type_defs : Hash(Tuple(Array(String), String), Array(Parser::Definition))

    def initialize(definitions : Array(Parser::Definition))
      @ns_abstracts = {} of Array(String) => Array(String)
      @cat_ns_defs = {} of Parser::Category => Hash(Array(String), Array(Parser::Definition))
      @ns_type_defs = {} of Tuple(Array(String), String) => Array(Parser::Definition)

      definitions.sort { |a, b| a.name <=> b.name }.each do |d|
        @cat_ns_defs[d.category] ||= {} of Array(String) => Array(Parser::Definition)
        @cat_ns_defs[d.category][d.namespace] ||= [] of Parser::Definition
        @cat_ns_defs[d.category][d.namespace] << d

        next if d.type.name.in?(IGNORED_ABSTRACTS)
        @ns_type_defs[{d.type.namespace, d.type.name}] ||= [] of Parser::Definition
        @ns_type_defs[{d.type.namespace, d.type.name}] << d
      end

      @ns_type_defs.each do |(ns, type), defs|
        unless defs.empty?
          next if defs.any? { |d| d.name.underscore.downcase == type.underscore.downcase }
          @ns_abstracts[ns] ||= [] of String
          @ns_abstracts[ns] << type
        end
      end
    end
  end
end
