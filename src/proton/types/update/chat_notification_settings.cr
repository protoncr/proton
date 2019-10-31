# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Notification settings for a chat were changed.
  # chat_id [::Int64] Chat identifier.
  # notification_settings [Proton::Types::ChatNotificationSettings] The new notification settings.
  class Update::ChatNotificationSettings < Types::Update
    property chat_id : ::Int64
    property notification_settings : Proton::Types::ChatNotificationSettings

    def initialize(@chat_id : ::Int64, @notification_settings : Proton::Types::ChatNotificationSettings)
    end
  end
end

