# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # A chat.
  # (Can be a private chat, basic group, supergroup, or secret chat).
  # id [::Int64] Chat unique identifier.
  # type [Proton::Types::ChatType] Type of the chat.
  # title [::String] Chat title.
  # photo [Proton::Types::ChatPhoto, nil] Chat photo; may be null.
  # permissions [Proton::Types::ChatPermissions] Actions that non-administrator chat members are allowed to take in the
  #   chat.
  # last_message [Proton::Types::Message, nil] Last message in the chat; may be null.
  # order [::Int64] Descending parameter by which chats are sorted in the main chat list.
  #   If the order number of two chats is the same, they must be sorted in descending order by ID.
  #   If 0, the position of the chat in the list is undetermined.
  # is_pinned [::Bool] True, if the chat is pinned.
  # is_marked_as_unread [::Bool] True, if the chat is marked as unread.
  # is_sponsored [::Bool] True, if the chat is sponsored by the user's MTProxy server.
  # can_be_deleted_only_for_self [::Bool] True, if the chat messages can be deleted only for the current user while
  #   other users will continue to see the messages.
  # can_be_deleted_for_all_users [::Bool] True, if the chat messages can be deleted for all users.
  # can_be_reported [::Bool] True, if the chat can be reported to Telegram moderators through reportChat.
  # default_disable_notification [::Bool] Default value of the disable_notification parameter, used when a message is
  #   sent to the chat.
  # unread_count [::Int32] Number of unread messages in the chat.
  # last_read_inbox_message_id [::Int64] Identifier of the last read incoming message.
  # last_read_outbox_message_id [::Int64] Identifier of the last read outgoing message.
  # unread_mention_count [::Int32] Number of unread messages with a mention/reply in the chat.
  # notification_settings [Proton::Types::ChatNotificationSettings] Notification settings for this chat.
  # pinned_message_id [::Int64] Identifier of the pinned message in the chat; 0 if none.
  # reply_markup_message_id [::Int64] Identifier of the message from which reply markup needs to be used; 0 if there is
  #   no default custom reply markup in the chat.
  # draft_message [Proton::Types::DraftMessage, nil] A draft of a message in the chat; may be null.
  # client_data [::String] Contains client-specific data associated with the chat.
  #   (For example, the chat position or local chat notification settings can be stored here.) Persistent if a message
  #   database is used.
  class Chat < Types::Base
    property id : ::Int64
    property type : Proton::Types::ChatType
    property title : ::String
    property photo : Proton::Types::ChatPhoto?
    property permissions : Proton::Types::ChatPermissions
    property last_message : Proton::Types::Message?
    property order : ::Int64
    property is_pinned : ::Bool
    property is_marked_as_unread : ::Bool
    property is_sponsored : ::Bool
    property can_be_deleted_only_for_self : ::Bool
    property can_be_deleted_for_all_users : ::Bool
    property can_be_reported : ::Bool
    property default_disable_notification : ::Bool
    property unread_count : ::Int32
    property last_read_inbox_message_id : ::Int64
    property last_read_outbox_message_id : ::Int64
    property unread_mention_count : ::Int32
    property notification_settings : Proton::Types::ChatNotificationSettings
    property pinned_message_id : ::Int64
    property reply_markup_message_id : ::Int64
    property draft_message : Proton::Types::DraftMessage?
    property client_data : ::String

    def initialize(@id : ::Int64, @reply_markup_message_id : ::Int64, @pinned_message_id : ::Int64, @notification_settings : Proton::Types::ChatNotificationSettings, @unread_mention_count : ::Int32, @last_read_outbox_message_id : ::Int64, @last_read_inbox_message_id : ::Int64, @unread_count : ::Int32, @default_disable_notification : ::Bool, @can_be_reported : ::Bool, @can_be_deleted_for_all_users : ::Bool, @can_be_deleted_only_for_self : ::Bool, @is_sponsored : ::Bool, @is_marked_as_unread : ::Bool, @is_pinned : ::Bool, @order : ::Int64, @permissions : Proton::Types::ChatPermissions, @title : ::String, @type : Proton::Types::ChatType, @client_data : ::String, @last_message : Proton::Types::Message? = nil, @photo : Proton::Types::ChatPhoto? = nil, @draft_message : Proton::Types::DraftMessage? = nil)
    end
  end
end

