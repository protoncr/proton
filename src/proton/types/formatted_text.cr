# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # A text with some entities.
  # text [::String] The text.
  # entities [::Array(Proton::Types::TextEntity)] Entities contained in the text.
  class FormattedText < Types::Base
    property text : ::String
    property entities : ::Array(Proton::Types::TextEntity)

    def initialize(@text : ::String, @entities : ::Array(Proton::Types::TextEntity))
    end
  end
end

