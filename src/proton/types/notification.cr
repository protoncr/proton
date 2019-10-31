# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a notification.
  # id [::Int32] Unique persistent identifier of this notification.
  # date [::Int32] Notification date.
  # type [Proton::Types::NotificationType] Notification type.
  class Notification < Types::Base
    property id : ::Int32
    property date : ::Int32
    property type : Proton::Types::NotificationType

    def initialize(@id : ::Int32, @date : ::Int32, @type : Proton::Types::NotificationType)
    end
  end
end

