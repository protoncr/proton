# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A new chat member was invited.
  class ChatEventAction::MemberInvited < Types::ChatEventAction
    include JSON::Serializable

    # New member user identifier
    property user_id : ::Int32

    # New member status
    property status : Proton::Types::ChatMemberStatus

    def initialize(@user_id : ::Int32, @status : Proton::Types::ChatMemberStatus)
    end
  end
end
