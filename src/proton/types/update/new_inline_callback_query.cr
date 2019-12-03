# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A new incoming callback query from a message sent via a bot; for bots only.
  class Update::NewInlineCallbackQuery < Types::Update
    include JSON::Serializable

    # Unique query identifier
    property id : ::String

    # Identifier of the user who sent the query
    property sender_user_id : ::Int32

    # Identifier of the inline message, from which the query originated
    property inline_message_id : ::String

    # An identifier uniquely corresponding to the chat a message was sent to
    property chat_instance : ::String

    # Query payload
    property payload : Proton::Types::CallbackQueryPayload

    def initialize(@id : ::String, @sender_user_id : ::Int32, @inline_message_id : ::String, @chat_instance : ::String, @payload : Proton::Types::CallbackQueryPayload)
    end
  end
end
