module Proton
  module Utils
    class EntityParser
      def initialize(@parse_mode : ParseMode)
      end

      def parse(text)
        case @parse_mode
        in ParseMode::Markdown
          Markdown.new(1).parse(text)
        in ParseMode::MarkdownV2
          Markdown.new(2).parse(text)
        in ParseMode::HTML
          raise "HTML not yet supported"
        end
      end

      class Markdown
        def initialize(@version : Int32)
        end

        def parse(text)
          utf16 = text.to_utf16

        end
      end
    end
  end
end
