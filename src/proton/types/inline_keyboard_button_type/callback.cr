# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A button that sends a special callback query to a bot.
  class InlineKeyboardButtonType::Callback < Types::InlineKeyboardButtonType
    include JSON::Serializable

    # Data to be sent to the bot via a callback query
    property data : ::String

    def initialize(@data : ::String)
    end
  end
end
