# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a group of notifications.
  class NotificationGroup < Types::Base
    include JSON::Serializable

    # Unique persistent auto-incremented from 1 identifier of the notification group
    property id : ::Int32

    # Type of the group
    property type : Proton::Types::NotificationGroupType

    # Identifier of a chat to which all notifications in the group belong
    property chat_id : ::Int64

    # Total number of active notifications in the group
    property total_count : ::Int32

    # The list of active notifications
    property notifications : ::Array(Proton::Types::Notification)

    def initialize(@id : ::Int32, @type : Proton::Types::NotificationGroupType, @chat_id : ::Int64, @total_count : ::Int32, @notifications : ::Array(Proton::Types::Notification))
    end
  end
end
