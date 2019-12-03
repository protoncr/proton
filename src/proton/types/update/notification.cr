# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A notification was changed.
  class Update::Notification < Types::Update
    include JSON::Serializable

    # Unique notification group identifier
    property notification_group_id : ::Int32

    # Changed notification
    property notification : Proton::Types::Notification

    def initialize(@notification_group_id : ::Int32, @notification : Proton::Types::Notification)
    end
  end
end
