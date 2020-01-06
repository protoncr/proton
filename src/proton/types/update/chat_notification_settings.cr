# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Notification settings for a chat were changed.
  class Update::ChatNotificationSettings < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int64

    # The new notification settings
    property notification_settings : Proton::Types::ChatNotificationSettings

    def initialize(@chat_id : ::Int64, @notification_settings : Proton::Types::ChatNotificationSettings)
    end
  end
end
