# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Text that must be formatted as if inside pre, and code HTML tags.
  # language [::String] Programming language of the code; as defined by the sender.
  class TextEntityType::PreCode < Types::TextEntityType
    property language : ::String

    def initialize(@language : ::String)
    end
  end
end

