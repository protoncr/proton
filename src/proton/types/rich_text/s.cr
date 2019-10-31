# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A concatenation of rich texts.
  # texts [::Array(Proton::Types::RichText)] Texts.
  class RichText::S < Types::RichText
    property texts : ::Array(Proton::Types::RichText)

    def initialize(@texts : ::Array(Proton::Types::RichText))
    end
  end
end

