# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A chat member has gained/lost administrator status, or the list of their administrator privileges has changed.
  class ChatEventAction::MemberPromoted < Types::ChatEventAction
    include JSON::Serializable

    # Chat member user identifier
    property user_id : ::Int32

    # Previous status of the chat member
    property old_status : Proton::Types::ChatMemberStatus

    # New status of the chat member
    property new_status : Proton::Types::ChatMemberStatus

    def initialize(@user_id : ::Int32, @old_status : Proton::Types::ChatMemberStatus, @new_status : Proton::Types::ChatMemberStatus)
    end
  end
end
