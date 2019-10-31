# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An italicized rich text.
  # text [Proton::Types::RichText] Text.
  class RichText::Italic < Types::RichText
    property text : Proton::Types::RichText

    def initialize(@text : Proton::Types::RichText)
    end
  end
end

