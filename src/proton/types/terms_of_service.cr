# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains Telegram terms of service.
  class TermsOfService < Types::Base
    include JSON::Serializable

    # Text of the terms of service
    property text : Proton::Types::FormattedText

    # Minimum age of a user to be able to accept the terms; 0 if any
    property min_user_age : ::Int32

    # True, if a blocking popup with terms of service must be shown to the user
    property show_popup : ::Bool = false

    def initialize(@text : Proton::Types::FormattedText, @min_user_age : ::Int32, @show_popup : ::Bool = false)
    end
  end
end
