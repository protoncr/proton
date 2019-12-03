# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Contains active notifications that was shown on previous application launches.
  # This update is sent only if a message database is used.
  # In that case it comes once before any updateNotification and updateNotificationGroup update.
  class Update::ActiveNotifications < Types::Update
    include JSON::Serializable

    # Lists of active notification groups
    property groups : ::Array(Proton::Types::NotificationGroup)

    def initialize(@groups : ::Array(Proton::Types::NotificationGroup))
    end
  end
end
