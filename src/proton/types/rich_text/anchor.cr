# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A rich text anchor.
  # text [Proton::Types::RichText] Text.
  # name [::String] Anchor name.
  class RichText::Anchor < Types::RichText
    property text : Proton::Types::RichText
    property name : ::String

    def initialize(@text : Proton::Types::RichText, @name : ::String)
    end
  end
end

