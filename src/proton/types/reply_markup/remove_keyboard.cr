# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Instructs clients to remove the keyboard once this message has been received.
  # This kind of keyboard can't be received in an incoming message; instead, UpdateChatReplyMarkup with message_id == 0
  #   will be sent.
  class ReplyMarkup::RemoveKeyboard < Types::ReplyMarkup
    include JSON::Serializable

    # True, if the keyboard is removed only for the mentioned users or the target user of a reply
    property is_personal : ::Bool

    def initialize(@is_personal : ::Bool)
    end
  end
end
