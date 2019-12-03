# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the types of chats to which notification settings are applied.
  abstract class NotificationSettingsScope < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "notificationSettingsScopePrivateChats" => Types::NotificationSettingsScope::PrivateChats,
      "notificationSettingsScopeGroupChats" => Types::NotificationSettingsScope::GroupChats,
      "notificationSettingsScopeChannelChats" => Types::NotificationSettingsScope::ChannelChats
    })
  end
end

require "./notification_settings_scope/private_chats"
require "./notification_settings_scope/group_chats"
require "./notification_settings_scope/channel_chats"
