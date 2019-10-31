# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A new incoming callback query; for bots only.
  # id [::Int64] Unique query identifier.
  # sender_user_id [::Int32] Identifier of the user who sent the query.
  # chat_id [::Int64] Identifier of the chat, in which the query was sent.
  # message_id [::Int64] Identifier of the message, from which the query originated.
  # chat_instance [::Int64] Identifier that uniquely corresponds to the chat to which the message was sent.
  # payload [Proton::Types::CallbackQueryPayload] Query payload.
  class Update::NewCallbackQuery < Types::Update
    property id : ::Int64
    property sender_user_id : ::Int32
    property chat_id : ::Int64
    property message_id : ::Int64
    property chat_instance : ::Int64
    property payload : Proton::Types::CallbackQueryPayload

    def initialize(@id : ::Int64, @sender_user_id : ::Int32, @chat_id : ::Int64, @message_id : ::Int64, @chat_instance : ::Int64, @payload : Proton::Types::CallbackQueryPayload)
    end
  end
end

