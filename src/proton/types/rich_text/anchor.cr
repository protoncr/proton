# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A rich text anchor.
  class RichText::Anchor < Types::RichText
    include JSON::Serializable

    # Text
    property text : Proton::Types::RichText

    # Anchor name
    property name : ::String

    def initialize(@text : Proton::Types::RichText, @name : ::String)
    end
  end
end
