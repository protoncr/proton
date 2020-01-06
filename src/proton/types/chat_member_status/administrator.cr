# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The user is a member of a chat and has some additional privileges.
  # In basic groups, administrators can edit and delete messages sent by others, add new members, and ban unprivileged
  #   members.
  # In supergroups and channels, there are more detailed options for administrator privileges.
  class ChatMemberStatus::Administrator < Types::ChatMemberStatus
    include JSON::Serializable

    # True, if the current user can edit the administrator privileges for the called user
    property can_be_edited : ::Bool = false

    # True, if the administrator can change the chat title, photo, and other settings
    property can_change_info : ::Bool = false

    # True, if the administrator can create channel posts; applicable to channels only
    property can_post_messages : ::Bool = false

    # True, if the administrator can edit messages of other users and pin messages; applicable to channels only
    property can_edit_messages : ::Bool = false

    # True, if the administrator can delete messages of other users
    property can_delete_messages : ::Bool = false

    # True, if the administrator can invite new users to the chat
    property can_invite_users : ::Bool = false

    # True, if the administrator can restrict, ban, or unban chat members
    property can_restrict_members : ::Bool = false

    # True, if the administrator can pin messages; applicable to groups only
    property can_pin_messages : ::Bool = false

    # True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that were directly or indirectly promoted by him
    property can_promote_members : ::Bool = false

    def initialize(@can_be_edited : ::Bool = false, @can_change_info : ::Bool = false, @can_post_messages : ::Bool = false, @can_edit_messages : ::Bool = false, @can_delete_messages : ::Bool = false, @can_invite_users : ::Bool = false, @can_restrict_members : ::Bool = false, @can_pin_messages : ::Bool = false, @can_promote_members : ::Bool = false)
    end
  end
end
