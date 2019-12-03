# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Provides information about a bot and its supported commands.
  class BotInfo < Types::Base
    include JSON::Serializable

    # Long description shown on the user info page
    property description : ::String

    # A list of commands supported by the bot
    property commands : ::Array(Proton::Types::BotCommand)

    def initialize(@description : ::String, @commands : ::Array(Proton::Types::BotCommand))
    end
  end
end
