# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with a poll.
  class MessageContent::Poll < Types::MessageContent
    include JSON::Serializable

    # Poll
    property poll : Proton::Types::Poll

    def initialize(@poll : Proton::Types::Poll)
    end
  end
end
