# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The message was originally written by a known user.
  # sender_user_id [::Int32] Identifier of the user that originally sent the message.
  class MessageForwardOrigin::User < Types::MessageForwardOrigin
    property sender_user_id : ::Int32

    def initialize(@sender_user_id : ::Int32)
    end
  end
end

