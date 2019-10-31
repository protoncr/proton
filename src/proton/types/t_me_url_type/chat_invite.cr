# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A chat invite link.
  # info [Proton::Types::ChatInviteLinkInfo] Chat invite link info.
  class TMeUrlType::ChatInvite < Types::TMeUrlType
    property info : Proton::Types::ChatInviteLinkInfo

    def initialize(@info : Proton::Types::ChatInviteLinkInfo)
    end
  end
end

