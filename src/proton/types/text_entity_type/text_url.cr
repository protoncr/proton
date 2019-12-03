# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A text description shown instead of a raw URL.
  class TextEntityType::TextUrl < Types::TextEntityType
    include JSON::Serializable

    # HTTP or tg:// URL to be opened when the link is clicked
    property url : ::String

    def initialize(@url : ::String)
    end
  end
end
