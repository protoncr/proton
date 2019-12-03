# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A bold rich text.
  class RichText::Bold < Types::RichText
    include JSON::Serializable

    # Text
    property text : Proton::Types::RichText

    def initialize(@text : Proton::Types::RichText)
    end
  end
end
