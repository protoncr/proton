# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a notification.
  class Notification < Types::Base
    include JSON::Serializable

    # Unique persistent identifier of this notification
    property id : ::Int32

    # Notification date
    property date : ::Int32

    # Notification type
    property type : Proton::Types::NotificationType

    def initialize(@id : ::Int32, @date : ::Int32, @type : Proton::Types::NotificationType)
    end
  end
end
