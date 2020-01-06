# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about notification settings for a chat.
  class ChatNotificationSettings < Types::Base
    include JSON::Serializable

    # Time left before notifications will be unmuted, in seconds
    property mute_for : ::Int32

    # The name of an audio file to be used for notification sounds; only applies to iOS applications
    property sound : ::String

    # If true, mute_for is ignored and the value for the relevant type of chat is used instead
    property use_default_mute_for : ::Bool = false

    # If true, sound is ignored and the value for the relevant type of chat is used instead
    property use_default_sound : ::Bool = false

    # If true, show_preview is ignored and the value for the relevant type of chat is used instead
    property use_default_show_preview : ::Bool = false

    # True, if message content should be displayed in notifications
    property show_preview : ::Bool = false

    # If true, disable_pinned_message_notifications is ignored and the value for the relevant type of chat is used instead
    property use_default_disable_pinned_message_notifications : ::Bool = false

    # If true, notifications for incoming pinned messages will be created as for an ordinary unread message
    property disable_pinned_message_notifications : ::Bool = false

    # If true, disable_mention_notifications is ignored and the value for the relevant type of chat is used instead
    property use_default_disable_mention_notifications : ::Bool = false

    # If true, notifications for messages with mentions will be created as for an ordinary unread message
    property disable_mention_notifications : ::Bool = false

    def initialize(@mute_for : ::Int32, @sound : ::String, @use_default_mute_for : ::Bool = false, @use_default_sound : ::Bool = false, @use_default_show_preview : ::Bool = false, @show_preview : ::Bool = false, @use_default_disable_pinned_message_notifications : ::Bool = false, @disable_pinned_message_notifications : ::Bool = false, @use_default_disable_mention_notifications : ::Bool = false, @disable_mention_notifications : ::Bool = false)
    end
  end
end
