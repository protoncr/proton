# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A chat invite link.
  class TMeUrlType::ChatInvite < Types::TMeUrlType
    include JSON::Serializable

    # Chat invite link info
    property info : Proton::Types::ChatInviteLinkInfo

    def initialize(@info : Proton::Types::ChatInviteLinkInfo)
    end
  end
end
