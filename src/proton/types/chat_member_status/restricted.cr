# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The user is under certain restrictions in the chat.
  # Not supported in basic groups and channels.
  class ChatMemberStatus::Restricted < Types::ChatMemberStatus
    include JSON::Serializable

    # True, if the user is a member of the chat
    property is_member : ::Bool

    # Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if never. If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is considered to be restricted forever
    property restricted_until_date : ::Int32

    # User permissions in the chat
    property permissions : Proton::Types::ChatPermissions

    def initialize(@is_member : ::Bool, @restricted_until_date : ::Int32, @permissions : Proton::Types::ChatPermissions)
    end
  end
end
