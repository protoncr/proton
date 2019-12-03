# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A plain text.
  class RichText::Plain < Types::RichText
    include JSON::Serializable

    # Text
    property text : ::String

    def initialize(@text : ::String)
    end
  end
end
