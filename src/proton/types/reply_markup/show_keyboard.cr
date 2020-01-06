# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Contains a custom keyboard layout to quickly reply to bots.
  class ReplyMarkup::ShowKeyboard < Types::ReplyMarkup
    include JSON::Serializable

    # A list of rows of bot keyboard buttons
    property rows : ::Array(::Array(Proton::Types::KeyboardButton))

    # True, if the client needs to resize the keyboard vertically
    property resize_keyboard : ::Bool = false

    # True, if the client needs to hide the keyboard after use
    property one_time : ::Bool = false

    # True, if the keyboard must automatically be shown to the current user. For outgoing messages, specify true to show the keyboard only for the mentioned users and for the target user of a reply
    property is_personal : ::Bool = false

    def initialize(@rows : ::Array(::Array(Proton::Types::KeyboardButton)), @resize_keyboard : ::Bool = false, @one_time : ::Bool = false, @is_personal : ::Bool = false)
    end
  end
end
