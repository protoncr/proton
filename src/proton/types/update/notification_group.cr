# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A list of active notifications in a notification group has changed.
  class Update::NotificationGroup < Types::Update
    include JSON::Serializable

    # Unique notification group identifier
    property notification_group_id : ::Int32

    # New type of the notification group
    property type : Proton::Types::NotificationGroupType

    # Identifier of a chat to which all notifications in the group belong
    property chat_id : ::Int64

    # Chat identifier, which notification settings must be applied to the added notifications
    property notification_settings_chat_id : ::Int64

    # Total number of unread notifications in the group, can be bigger than number of active notifications
    property total_count : ::Int32

    # List of added group notifications, sorted by notification ID
    property added_notifications : ::Array(Proton::Types::Notification)

    # Identifiers of removed group notifications, sorted by notification ID
    property removed_notification_ids : ::Array(::Int32)

    # True, if the notifications should be shown without sound
    property is_silent : ::Bool = false

    def initialize(@notification_group_id : ::Int32, @type : Proton::Types::NotificationGroupType, @chat_id : ::Int64, @notification_settings_chat_id : ::Int64, @total_count : ::Int32, @added_notifications : ::Array(Proton::Types::Notification), @removed_notification_ids : ::Array(::Int32), @is_silent : ::Bool = false)
    end
  end
end
