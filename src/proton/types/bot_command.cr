# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents commands supported by a bot.
  class BotCommand < Types::Base
    include JSON::Serializable

    # Text of the bot command
    property command : ::String

    # Description of the bot command
    property description : ::String

    def initialize(@command : ::String, @description : ::String)
    end
  end
end
