# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A new incoming callback query from a message sent via a bot; for bots only.
  # id [::Int64] Unique query identifier.
  # sender_user_id [::Int32] Identifier of the user who sent the query.
  # inline_message_id [::String] Identifier of the inline message, from which the query originated.
  # chat_instance [::Int64] An identifier uniquely corresponding to the chat a message was sent to.
  # payload [Proton::Types::CallbackQueryPayload] Query payload.
  class Update::NewInlineCallbackQuery < Types::Update
    property id : ::Int64
    property sender_user_id : ::Int32
    property inline_message_id : ::String
    property chat_instance : ::Int64
    property payload : Proton::Types::CallbackQueryPayload

    def initialize(@id : ::Int64, @sender_user_id : ::Int32, @inline_message_id : ::String, @chat_instance : ::Int64, @payload : Proton::Types::CallbackQueryPayload)
    end
  end
end

