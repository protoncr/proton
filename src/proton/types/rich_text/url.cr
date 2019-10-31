# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A rich text URL link.
  # text [Proton::Types::RichText] Text.
  # url [::String] URL.
  class RichText::Url < Types::RichText
    property text : Proton::Types::RichText
    property url : ::String

    def initialize(@text : Proton::Types::RichText, @url : ::String)
    end
  end
end

