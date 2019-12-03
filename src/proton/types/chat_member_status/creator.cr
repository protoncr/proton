# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The user is the creator of a chat and has all the administrator privileges.
  class ChatMemberStatus::Creator < Types::ChatMemberStatus
    include JSON::Serializable

    # True, if the user is a member of the chat
    property is_member : ::Bool

    def initialize(@is_member : ::Bool)
    end
  end
end
