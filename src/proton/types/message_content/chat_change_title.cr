# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An updated chat title.
  # title [::String] New chat title.
  class MessageContent::ChatChangeTitle < Types::MessageContent
    property title : ::String

    def initialize(@title : ::String)
    end
  end
end

