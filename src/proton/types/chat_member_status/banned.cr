# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The user was banned (and hence is not a member of the chat).
  # Implies the user can't return to the chat or view messages.
  # banned_until_date [::Int32] Point in time (Unix timestamp) when the user will be unbanned; 0 if never.
  #   If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is
  #   considered to be banned forever.
  class ChatMemberStatus::Banned < Types::ChatMemberStatus
    property banned_until_date : ::Int32

    def initialize(@banned_until_date : ::Int32)
    end
  end
end

