# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A list of active notifications in a notification group has changed.
  # notification_group_id [::Int32] Unique notification group identifier.
  # type [Proton::Types::NotificationGroupType] New type of the notification group.
  # chat_id [::Int64] Identifier of a chat to which all notifications in the group belong.
  # notification_settings_chat_id [::Int64] Chat identifier, which notification settings must be applied to the added
  #   notifications.
  # is_silent [::Bool] True, if the notifications should be shown without sound.
  # total_count [::Int32] Total number of unread notifications in the group, can be bigger than number of active
  #   notifications.
  # added_notifications [::Array(Proton::Types::Notification)] List of added group notifications, sorted by
  #   notification ID.
  # removed_notification_ids [::Array(::Int32)] Identifiers of removed group notifications, sorted by notification ID.
  class Update::NotificationGroup < Types::Update
    property notification_group_id : ::Int32
    property type : Proton::Types::NotificationGroupType
    property chat_id : ::Int64
    property notification_settings_chat_id : ::Int64
    property is_silent : ::Bool
    property total_count : ::Int32
    property added_notifications : ::Array(Proton::Types::Notification)
    property removed_notification_ids : ::Array(::Int32)

    def initialize(@notification_group_id : ::Int32, @type : Proton::Types::NotificationGroupType, @chat_id : ::Int64, @notification_settings_chat_id : ::Int64, @is_silent : ::Bool, @total_count : ::Int32, @added_notifications : ::Array(Proton::Types::Notification), @removed_notification_ids : ::Array(::Int32))
    end
  end
end

