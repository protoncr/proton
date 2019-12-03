# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A newly created supergroup or channel.
  class MessageContent::SupergroupChatCreate < Types::MessageContent
    include JSON::Serializable

    # Title of the supergroup or channel
    property title : ::String

    def initialize(@title : ::String)
    end
  end
end
