# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about the availability of the "Report spam" action for a chat.
  # can_report_spam [::Bool] True, if a prompt with the "Report spam" action should be shown to the user.
  class ChatReportSpamState < Types::Base
    property can_report_spam : ::Bool

    def initialize(@can_report_spam : ::Bool)
    end
  end
end

