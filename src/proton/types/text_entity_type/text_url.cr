# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A text description shown instead of a raw URL.
  # url [::String] HTTP or tg:// URL to be opened when the link is clicked.
  class TextEntityType::TextUrl < Types::TextEntityType
    property url : ::String

    def initialize(@url : ::String)
    end
  end
end

