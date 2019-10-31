# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A chat title was edited.
  # title [::String] New chat title.
  class PushMessageContent::ChatChangeTitle < Types::PushMessageContent
    property title : ::String

    def initialize(@title : ::String)
    end
  end
end

