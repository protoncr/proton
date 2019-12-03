# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A new message was received; can also be an outgoing message.
  class Update::NewMessage < Types::Update
    include JSON::Serializable

    # The new message
    property message : Proton::Types::Message

    def initialize(@message : Proton::Types::Message)
    end
  end
end
