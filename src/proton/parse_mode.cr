module Proton
  enum ParseMode
    Markdown
    MarkdownV2
    HTML

    def to_tl
      case self
      when Markdown
        TL::TextParseModeMarkdown.new(1)
      when MarkdownV2
        TL::TextParseModeMarkdown.new(2)
      when HTML
        TL::TextParseModeHTML.new
      else
        raise "Unreachable"
      end
    end
  end
end
