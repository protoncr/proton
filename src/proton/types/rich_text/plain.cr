# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A plain text.
  # text [::String] Text.
  class RichText::Plain < Types::RichText
    property text : ::String

    def initialize(@text : ::String)
    end
  end
end

