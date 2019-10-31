# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed.
  # user_id [::Int32] Chat member user identifier.
  # old_status [Proton::Types::ChatMemberStatus] Previous status of the chat member.
  # new_status [Proton::Types::ChatMemberStatus] New status of the chat member.
  class ChatEventAction::MemberRestricted < Types::ChatEventAction
    property user_id : ::Int32
    property old_status : Proton::Types::ChatMemberStatus
    property new_status : Proton::Types::ChatMemberStatus

    def initialize(@user_id : ::Int32, @old_status : Proton::Types::ChatMemberStatus, @new_status : Proton::Types::ChatMemberStatus)
    end
  end
end

