# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about notification settings for several chats.
  class ScopeNotificationSettings < Types::Base
    include JSON::Serializable

    # Time left before notifications will be unmuted, in seconds
    property mute_for : ::Int32

    # The name of an audio file to be used for notification sounds; only applies to iOS applications
    property sound : ::String

    # True, if message content should be displayed in notifications
    property show_preview : ::Bool = false

    # True, if notifications for incoming pinned messages will be created as for an ordinary unread message
    property disable_pinned_message_notifications : ::Bool = false

    # True, if notifications for messages with mentions will be created as for an ordinary unread message
    property disable_mention_notifications : ::Bool = false

    def initialize(@mute_for : ::Int32, @sound : ::String, @show_preview : ::Bool = false, @disable_pinned_message_notifications : ::Bool = false, @disable_mention_notifications : ::Bool = false)
    end
  end
end
