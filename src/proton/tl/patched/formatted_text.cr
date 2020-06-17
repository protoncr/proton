module Proton
  module TL
    class FormattedText < TLObject
      def raw_text(parse_mode : ParseMode = :markdown)
        Utils.unparse_text(text.to_s, entities!)
      end
    end
  end
end
