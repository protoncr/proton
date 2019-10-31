# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A button that forces an inline query to the bot to be inserted in the input field.
  # query [::String] Inline query to be sent to the bot.
  # in_current_chat [::Bool] True, if the inline query should be sent from the current chat.
  class InlineKeyboardButtonType::SwitchInline < Types::InlineKeyboardButtonType
    property query : ::String
    property in_current_chat : ::Bool

    def initialize(@query : ::String, @in_current_chat : ::Bool)
    end
  end
end

