# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Describes, whether there are some pending notification updates.
  # Can be used to prevent application from killing, while there are some pending notifications.
  class Update::HavePendingNotifications < Types::Update
    include JSON::Serializable

    # True, if there are some delayed notification updates, which will be sent soon
    property have_delayed_notifications : ::Bool

    # True, if there can be some yet unreceived notifications, which are being fetched from the server
    property have_unreceived_notifications : ::Bool

    def initialize(@have_delayed_notifications : ::Bool, @have_unreceived_notifications : ::Bool)
    end
  end
end
