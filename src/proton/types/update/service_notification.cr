# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Service notification from the server.
  # Upon receiving this the client must show a popup with the content of the notification.
  # type [::String] Notification type.
  #   If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" should be shown under notification;
  #   if user presses the second, all local data should be destroyed using Destroy method.
  # content [Proton::Types::MessageContent] Notification content.
  class Update::ServiceNotification < Types::Update
    property type : ::String
    property content : Proton::Types::MessageContent

    def initialize(@type : ::String, @content : Proton::Types::MessageContent)
    end
  end
end

