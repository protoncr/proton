# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about notification settings for several chats.
  # mute_for [::Int32] Time left before notifications will be unmuted, in seconds.
  # sound [::String] The name of an audio file to be used for notification sounds; only applies to iOS applications.
  # show_preview [::Bool] True, if message content should be displayed in notifications.
  # disable_pinned_message_notifications [::Bool] True, if notifications for incoming pinned messages will be created
  #   as for an ordinary unread message.
  # disable_mention_notifications [::Bool] True, if notifications for messages with mentions will be created as for an
  #   ordinary unread message.
  class ScopeNotificationSettings < Types::Base
    property mute_for : ::Int32
    property sound : ::String
    property show_preview : ::Bool
    property disable_pinned_message_notifications : ::Bool
    property disable_mention_notifications : ::Bool

    def initialize(@mute_for : ::Int32, @sound : ::String, @show_preview : ::Bool, @disable_pinned_message_notifications : ::Bool, @disable_mention_notifications : ::Bool)
    end
  end
end

