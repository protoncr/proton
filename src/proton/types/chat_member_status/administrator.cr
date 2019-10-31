# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The user is a member of a chat and has some additional privileges.
  # In basic groups, administrators can edit and delete messages sent by others, add new members, and ban unprivileged
  #   members.
  # In supergroups and channels, there are more detailed options for administrator privileges.
  # can_be_edited [::Bool] True, if the current user can edit the administrator privileges for the called user.
  # can_change_info [::Bool] True, if the administrator can change the chat title, photo, and other settings.
  # can_post_messages [::Bool] True, if the administrator can create channel posts; applicable to channels only.
  # can_edit_messages [::Bool] True, if the administrator can edit messages of other users and pin messages; applicable
  #   to channels only.
  # can_delete_messages [::Bool] True, if the administrator can delete messages of other users.
  # can_invite_users [::Bool] True, if the administrator can invite new users to the chat.
  # can_restrict_members [::Bool] True, if the administrator can restrict, ban, or unban chat members.
  # can_pin_messages [::Bool] True, if the administrator can pin messages; applicable to groups only.
  # can_promote_members [::Bool] True, if the administrator can add new administrators with a subset of their own
  #   privileges or demote administrators that were directly or indirectly promoted by him.
  class ChatMemberStatus::Administrator < Types::ChatMemberStatus
    property can_be_edited : ::Bool
    property can_change_info : ::Bool
    property can_post_messages : ::Bool
    property can_edit_messages : ::Bool
    property can_delete_messages : ::Bool
    property can_invite_users : ::Bool
    property can_restrict_members : ::Bool
    property can_pin_messages : ::Bool
    property can_promote_members : ::Bool

    def initialize(@can_be_edited : ::Bool, @can_change_info : ::Bool, @can_post_messages : ::Bool, @can_edit_messages : ::Bool, @can_delete_messages : ::Bool, @can_invite_users : ::Bool, @can_restrict_members : ::Bool, @can_pin_messages : ::Bool, @can_promote_members : ::Bool)
    end
  end
end

