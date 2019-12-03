# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # A text with some entities.
  class FormattedText < Types::Base
    include JSON::Serializable

    # The text
    property text : ::String

    # Entities contained in the text
    property entities : ::Array(Proton::Types::TextEntity)

    def initialize(@text : ::String, @entities : ::Array(Proton::Types::TextEntity))
    end
  end
end
