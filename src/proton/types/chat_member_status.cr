# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Provides information about the status of a member in a chat.
  abstract class ChatMemberStatus < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "chatMemberStatusCreator" => Types::ChatMemberStatus::Creator,
      "chatMemberStatusAdministrator" => Types::ChatMemberStatus::Administrator,
      "chatMemberStatusMember" => Types::ChatMemberStatus::Member,
      "chatMemberStatusRestricted" => Types::ChatMemberStatus::Restricted,
      "chatMemberStatusLeft" => Types::ChatMemberStatus::Left,
      "chatMemberStatusBanned" => Types::ChatMemberStatus::Banned
    })
  end
end

require "./chat_member_status/creator"
require "./chat_member_status/administrator"
require "./chat_member_status/member"
require "./chat_member_status/restricted"
require "./chat_member_status/left"
require "./chat_member_status/banned"
