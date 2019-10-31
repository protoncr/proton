# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A button that sends a special callback query to a bot.
  # data [::String] Data to be sent to the bot via a callback query.
  class InlineKeyboardButtonType::Callback < Types::InlineKeyboardButtonType
    property data : ::String

    def initialize(@data : ::String)
    end
  end
end

