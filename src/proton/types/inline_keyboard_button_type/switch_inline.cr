# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A button that forces an inline query to the bot to be inserted in the input field.
  class InlineKeyboardButtonType::SwitchInline < Types::InlineKeyboardButtonType
    include JSON::Serializable

    # Inline query to be sent to the bot
    property query : ::String

    # True, if the inline query should be sent from the current chat
    property in_current_chat : ::Bool = false

    def initialize(@query : ::String, @in_current_chat : ::Bool = false)
    end
  end
end
