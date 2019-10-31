# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains Telegram terms of service.
  # text [Proton::Types::FormattedText] Text of the terms of service.
  # min_user_age [::Int32] Minimum age of a user to be able to accept the terms; 0 if any.
  # show_popup [::Bool] True, if a blocking popup with terms of service must be shown to the user.
  class TermsOfService < Types::Base
    property text : Proton::Types::FormattedText
    property min_user_age : ::Int32
    property show_popup : ::Bool

    def initialize(@text : Proton::Types::FormattedText, @min_user_age : ::Int32, @show_popup : ::Bool)
    end
  end
end

