# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The default chat reply markup was changed.
  # Can occur because new messages with reply markup were received or because an old reply markup was hidden by the
  #   user.
  class Update::ChatReplyMarkup < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int64

    # Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
    property reply_markup_message_id : ::Int64

    def initialize(@chat_id : ::Int64, @reply_markup_message_id : ::Int64)
    end
  end
end
