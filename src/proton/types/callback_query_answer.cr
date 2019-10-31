# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a bot's answer to a callback query.
  # text [::String] Text of the answer.
  # show_alert [::Bool] True, if an alert should be shown to the user instead of a toast notification.
  # url [::String] URL to be opened.
  class CallbackQueryAnswer < Types::Base
    property text : ::String
    property show_alert : ::Bool
    property url : ::String

    def initialize(@text : ::String, @show_alert : ::Bool, @url : ::String)
    end
  end
end

