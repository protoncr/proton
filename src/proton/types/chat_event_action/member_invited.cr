# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A new chat member was invited.
  # user_id [::Int32] New member user identifier.
  # status [Proton::Types::ChatMemberStatus] New member status.
  class ChatEventAction::MemberInvited < Types::ChatEventAction
    property user_id : ::Int32
    property status : Proton::Types::ChatMemberStatus

    def initialize(@user_id : ::Int32, @status : Proton::Types::ChatMemberStatus)
    end
  end
end

