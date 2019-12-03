# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a bot's answer to a callback query.
  class CallbackQueryAnswer < Types::Base
    include JSON::Serializable

    # Text of the answer
    property text : ::String

    # True, if an alert should be shown to the user instead of a toast notification
    property show_alert : ::Bool

    # URL to be opened
    property url : ::String

    def initialize(@text : ::String, @show_alert : ::Bool, @url : ::String)
    end
  end
end
