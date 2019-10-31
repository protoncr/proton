# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents commands supported by a bot.
  # command [::String] Text of the bot command.
  # description [::String] Description of the bot command.
  class BotCommand < Types::Base
    property command : ::String
    property description : ::String

    def initialize(@command : ::String, @description : ::String)
    end
  end
end

