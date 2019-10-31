# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a group of notifications.
  # id [::Int32] Unique persistent auto-incremented from 1 identifier of the notification group.
  # type [Proton::Types::NotificationGroupType] Type of the group.
  # chat_id [::Int64] Identifier of a chat to which all notifications in the group belong.
  # total_count [::Int32] Total number of active notifications in the group.
  # notifications [::Array(Proton::Types::Notification)] The list of active notifications.
  class NotificationGroup < Types::Base
    property id : ::Int32
    property type : Proton::Types::NotificationGroupType
    property chat_id : ::Int64
    property total_count : ::Int32
    property notifications : ::Array(Proton::Types::Notification)

    def initialize(@id : ::Int32, @type : Proton::Types::NotificationGroupType, @chat_id : ::Int64, @total_count : ::Int32, @notifications : ::Array(Proton::Types::Notification))
    end
  end
end

