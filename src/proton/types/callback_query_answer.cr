# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a bot's answer to a callback query.
  class CallbackQueryAnswer < Types::Base
    include JSON::Serializable

    # Text of the answer
    property text : ::String

    # URL to be opened
    property url : ::String

    # True, if an alert should be shown to the user instead of a toast notification
    property show_alert : ::Bool = false

    def initialize(@text : ::String, @url : ::String, @show_alert : ::Bool = false)
    end
  end
end
