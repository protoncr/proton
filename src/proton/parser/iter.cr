require "colorize"
require "./tl/*"

module Proton::Parser
  class Iter
    include Iterator(Definition)

    DEFINITIONS_SEP = ";"
    FUNCTIONS_SEP   = "---functions---"
    TYPES_SEP       = "---types---"

    def initialize(contents : String)
      @index = 0
      @contents = Utils.remove_tl_comments(contents)
      @category = Category::Types
    end

    def next
      definition = ""

      definition = loop do
        if @index >= @contents.size
          return self.stop
        end

        sep_index = if _end = @contents[@index..].index(DEFINITIONS_SEP)
                      @index + _end
                    else
                      @contents.size
                    end

        definition = @contents[@index..sep_index].strip
        @index = sep_index + DEFINITIONS_SEP.size

        if !definition.empty?
          break definition
        end
      end

      if definition.starts_with?("---")
        if definition.starts_with?(FUNCTIONS_SEP)
          @category = Category::Functions
          definition = definition[(FUNCTIONS_SEP.size)..]
        elsif definition.starts_with?(TYPES_SEP)
          @category = Category::Types
          definition = definition[(TYPES_SEP.size)..]
        else
          raise ParseError::UnknownSeparator.new
        end
      end

      value = Definition.parse(definition)
      value.category = @category
      value
    end
  end
end
