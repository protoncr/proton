# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A concatenation of rich texts.
  class RichText::S < Types::RichText
    include JSON::Serializable

    # Texts
    property texts : ::Array(Proton::Types::RichText)

    def initialize(@texts : ::Array(Proton::Types::RichText))
    end
  end
end
