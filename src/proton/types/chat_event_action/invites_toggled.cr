# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The can_invite_users permission of a supergroup chat was toggled.
  # can_invite_users [::Bool] New value of can_invite_users permission.
  class ChatEventAction::InvitesToggled < Types::ChatEventAction
    property can_invite_users : ::Bool

    def initialize(@can_invite_users : ::Bool)
    end
  end
end

