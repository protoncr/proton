# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A notification was changed.
  # notification_group_id [::Int32] Unique notification group identifier.
  # notification [Proton::Types::Notification] Changed notification.
  class Update::Notification < Types::Update
    property notification_group_id : ::Int32
    property notification : Proton::Types::Notification

    def initialize(@notification_group_id : ::Int32, @notification : Proton::Types::Notification)
    end
  end
end

