# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the types of chats to which notification settings are applied.
  class NotificationSettingsScope < Types::Base

    def initialize()
    end
  end
end

require "./notification_settings_scope/private_chats"
require "./notification_settings_scope/group_chats"
require "./notification_settings_scope/channel_chats"