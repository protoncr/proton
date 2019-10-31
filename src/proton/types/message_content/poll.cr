# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with a poll.
  # poll [Proton::Types::Poll] Poll.
  class MessageContent::Poll < Types::MessageContent
    property poll : Proton::Types::Poll

    def initialize(@poll : Proton::Types::Poll)
    end
  end
end

