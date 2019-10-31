# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Notification settings for some type of chats were updated.
  # scope [Proton::Types::NotificationSettingsScope] Types of chats for which notification settings were updated.
  # notification_settings [Proton::Types::ScopeNotificationSettings] The new notification settings.
  class Update::ScopeNotificationSettings < Types::Update
    property scope : Proton::Types::NotificationSettingsScope
    property notification_settings : Proton::Types::ScopeNotificationSettings

    def initialize(@scope : Proton::Types::NotificationSettingsScope, @notification_settings : Proton::Types::ScopeNotificationSettings)
    end
  end
end

