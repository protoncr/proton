# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A newly created supergroup or channel.
  # title [::String] Title of the supergroup or channel.
  class MessageContent::SupergroupChatCreate < Types::MessageContent
    property title : ::String

    def initialize(@title : ::String)
    end
  end
end

