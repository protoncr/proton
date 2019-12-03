# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # A chat.
  # (Can be a private chat, basic group, supergroup, or secret chat).
  class Chat < Types::Base
    include JSON::Serializable

    # Chat unique identifier
    property id : ::Int64

    # Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
    property reply_markup_message_id : ::Int64

    # Identifier of the pinned message in the chat; 0 if none
    property pinned_message_id : ::Int64

    # Notification settings for this chat
    property notification_settings : Proton::Types::ChatNotificationSettings

    # Number of unread messages with a mention/reply in the chat
    property unread_mention_count : ::Int32

    # Identifier of the last read outgoing message
    property last_read_outbox_message_id : ::Int64

    # Identifier of the last read incoming message
    property last_read_inbox_message_id : ::Int64

    # Number of unread messages in the chat
    property unread_count : ::Int32

    # Default value of the disable_notification parameter, used when a message is sent to the chat
    property default_disable_notification : ::Bool

    # True, if the chat can be reported to Telegram moderators through reportChat
    property can_be_reported : ::Bool

    # True, if the chat messages can be deleted for all users
    property can_be_deleted_for_all_users : ::Bool

    # True, if the chat messages can be deleted only for the current user while other users will continue to see the messages
    property can_be_deleted_only_for_self : ::Bool

    # True, if the chat is sponsored by the user's MTProxy server
    property is_sponsored : ::Bool

    # True, if the chat is marked as unread
    property is_marked_as_unread : ::Bool

    # True, if the chat is pinned
    property is_pinned : ::Bool

    # Descending parameter by which chats are sorted in the main chat list. If the order number of two chats is the same, they must be sorted in descending order by ID. If 0, the position of the chat in the list is undetermined
    property order : ::Int64

    # Actions that non-administrator chat members are allowed to take in the chat
    property permissions : Proton::Types::ChatPermissions

    # Chat title
    property title : ::String

    # Type of the chat
    property type : Proton::Types::ChatType

    # Contains client-specific data associated with the chat. (For example, the chat position or local chat notification settings can be stored here.) Persistent if a message database is used
    property client_data : ::String

    # Last message in the chat; may be null
    property last_message : Proton::Types::Message? = nil

    # Chat photo; may be null
    property photo : Proton::Types::ChatPhoto? = nil

    # A draft of a message in the chat; may be null
    property draft_message : Proton::Types::DraftMessage? = nil

    def initialize(@id : ::Int64, @reply_markup_message_id : ::Int64, @pinned_message_id : ::Int64, @notification_settings : Proton::Types::ChatNotificationSettings, @unread_mention_count : ::Int32, @last_read_outbox_message_id : ::Int64, @last_read_inbox_message_id : ::Int64, @unread_count : ::Int32, @default_disable_notification : ::Bool, @can_be_reported : ::Bool, @can_be_deleted_for_all_users : ::Bool, @can_be_deleted_only_for_self : ::Bool, @is_sponsored : ::Bool, @is_marked_as_unread : ::Bool, @is_pinned : ::Bool, @order : ::Int64, @permissions : Proton::Types::ChatPermissions, @title : ::String, @type : Proton::Types::ChatType, @client_data : ::String, @last_message : Proton::Types::Message? = nil, @photo : Proton::Types::ChatPhoto? = nil, @draft_message : Proton::Types::DraftMessage? = nil)
    end
  end
end
