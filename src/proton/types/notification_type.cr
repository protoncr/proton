# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains detailed information about a notification.
  class NotificationType < Types::Base

    def initialize()
    end
  end
end

require "./notification_type/new_message"
require "./notification_type/new_secret_chat"
require "./notification_type/new_call"
require "./notification_type/new_push_message"