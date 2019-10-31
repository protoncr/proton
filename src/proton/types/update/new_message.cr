# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A new message was received; can also be an outgoing message.
  # message [Proton::Types::Message] The new message.
  class Update::NewMessage < Types::Update
    property message : Proton::Types::Message

    def initialize(@message : Proton::Types::Message)
    end
  end
end

