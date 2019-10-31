# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Contains a custom keyboard layout to quickly reply to bots.
  # rows [::Array(::Array(Proton::Types::KeyboardButton))] A list of rows of bot keyboard buttons.
  # resize_keyboard [::Bool] True, if the client needs to resize the keyboard vertically.
  # one_time [::Bool] True, if the client needs to hide the keyboard after use.
  # is_personal [::Bool] True, if the keyboard must automatically be shown to the current user.
  #   For outgoing messages, specify true to show the keyboard only for the mentioned users and for the target user of
  #   a reply.
  class ReplyMarkup::ShowKeyboard < Types::ReplyMarkup
    property rows : ::Array(::Array(Proton::Types::KeyboardButton))
    property resize_keyboard : ::Bool
    property one_time : ::Bool
    property is_personal : ::Bool

    def initialize(@rows : ::Array(::Array(Proton::Types::KeyboardButton)), @resize_keyboard : ::Bool, @one_time : ::Bool, @is_personal : ::Bool)
    end
  end
end

