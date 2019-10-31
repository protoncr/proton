# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A forwarded message.
  # from_chat_id [::Int64] Identifier for the chat this forwarded message came from.
  # message_id [::Int64] Identifier of the message to forward.
  # in_game_share [::Bool] True, if a game message should be shared within a launched game; applies only to game
  #   messages.
  # send_copy [::Bool] True, if content of the message needs to be copied without a link to the original message.
  #   Always true if the message is forwarded to a secret chat.
  # remove_caption [::Bool] True, if media caption of the message copy needs to be removed.
  #   Ignored if send_copy is false.
  class InputMessageContent::Forwarded < Types::InputMessageContent
    property from_chat_id : ::Int64
    property message_id : ::Int64
    property in_game_share : ::Bool
    property send_copy : ::Bool
    property remove_caption : ::Bool

    def initialize(@from_chat_id : ::Int64, @message_id : ::Int64, @in_game_share : ::Bool, @send_copy : ::Bool, @remove_caption : ::Bool)
    end
  end
end

