# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Notification settings for some type of chats were updated.
  class Update::ScopeNotificationSettings < Types::Update
    include JSON::Serializable

    # Types of chats for which notification settings were updated
    property scope : Proton::Types::NotificationSettingsScope

    # The new notification settings
    property notification_settings : Proton::Types::ScopeNotificationSettings

    def initialize(@scope : Proton::Types::NotificationSettingsScope, @notification_settings : Proton::Types::ScopeNotificationSettings)
    end
  end
end
