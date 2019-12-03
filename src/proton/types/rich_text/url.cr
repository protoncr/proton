# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A rich text URL link.
  class RichText::Url < Types::RichText
    include JSON::Serializable

    # Text
    property text : Proton::Types::RichText

    # URL
    property url : ::String

    def initialize(@text : Proton::Types::RichText, @url : ::String)
    end
  end
end
