# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes type of notifications in the group.
  abstract class NotificationGroupType < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "notificationGroupTypeMessages" => Types::NotificationGroupType::Messages,
      "notificationGroupTypeMentions" => Types::NotificationGroupType::Mentions,
      "notificationGroupTypeSecretChat" => Types::NotificationGroupType::SecretChat,
      "notificationGroupTypeCalls" => Types::NotificationGroupType::Calls
    })
  end
end

require "./notification_group_type/messages"
require "./notification_group_type/mentions"
require "./notification_group_type/secret_chat"
require "./notification_group_type/calls"
