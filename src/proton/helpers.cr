module Proton
  module Helpers
    extend self

    def escape_markdown(text)
      ['_', '*', '`', '[', ']', '(', ')'].each do |char|
        text = text.gsub(char, "\\#{char}")
      end
      text
    end

    def escape_markdown_v2(text)
      ['_', '*', '[', ']', '(', ')', '~', '`', '>', '#', '+', '-', '=', '|', '{', '}', '.', '!'].each do |char|
        text = text.gsub(char, "\\#{char}")
      end
      text
    end
  end
end
