# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The user is under certain restrictions in the chat.
  # Not supported in basic groups and channels.
  # is_member [::Bool] True, if the user is a member of the chat.
  # restricted_until_date [::Int32] Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if
  #   never.
  #   If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is
  #   considered to be restricted forever.
  # permissions [Proton::Types::ChatPermissions] User permissions in the chat.
  class ChatMemberStatus::Restricted < Types::ChatMemberStatus
    property is_member : ::Bool
    property restricted_until_date : ::Int32
    property permissions : Proton::Types::ChatPermissions

    def initialize(@is_member : ::Bool, @restricted_until_date : ::Int32, @permissions : Proton::Types::ChatPermissions)
    end
  end
end

