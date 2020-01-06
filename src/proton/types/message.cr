# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a message.
  class Message < Types::Base
    include JSON::Serializable

    # Message identifier, unique for the chat to which the message belongs
    property id : ::Int64

    # Content of the message
    property content : Proton::Types::MessageContent

    # Unique identifier of an album this message belongs to. Only photos and videos can be grouped together in albums
    property media_album_id : ::String

    # Number of times this message was viewed
    property views : ::Int32

    # If non-zero, the user identifier of the bot through which this message was sent
    property via_bot_user_id : ::Int32

    # Time left before the message expires, in seconds
    property ttl_expires_in : ::Float64

    # For self-destructing messages, the message's TTL (Time To Live), in seconds; 0 if none. TDLib will send updateDeleteMessages or updateMessageContent once the TTL expires
    property ttl : ::Int32

    # If non-zero, the identifier of the message this message is replying to; can be the identifier of a deleted message
    property reply_to_message_id : ::Int64

    # Point in time (Unix timestamp) when the message was last edited
    property edit_date : ::Int32

    # Point in time (Unix timestamp) when the message was sent
    property date : ::Int32

    # Chat identifier
    property chat_id : ::Int64

    # Identifier of the user who sent the message; 0 if unknown. Currently, it is unknown for channel posts and for channel posts automatically forwarded to discussion group
    property sender_user_id : ::Int32

    # True, if the message contains an unread mention for the current user
    property contains_unread_mention : ::Bool = false

    # True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts
    property is_channel_post : ::Bool = false

    # True, if the message can be deleted for all users
    property can_be_deleted_for_all_users : ::Bool = false

    # Information about the initial message sender; may be null
    property forward_info : Proton::Types::MessageForwardInfo? = nil

    # True, if the message can be deleted only for the current user while other users will continue to see it
    property can_be_deleted_only_for_self : ::Bool = false

    # True, if the message can be forwarded
    property can_be_forwarded : ::Bool = false

    # True, if the message can be edited. For live location and poll messages this fields shows, whether editMessageLiveLocation or stopPoll can be used with this message by the client
    property can_be_edited : ::Bool = false

    # True, if the message is outgoing
    property is_outgoing : ::Bool = false

    # For channel posts, optional author signature
    property author_signature : ::String? = nil

    # Information about the sending state of the message; may be null
    property sending_state : Proton::Types::MessageSendingState? = nil

    # Reply markup for the message; may be null
    property reply_markup : Proton::Types::ReplyMarkup? = nil

    def initialize(@id : ::Int64, @content : Proton::Types::MessageContent, @media_album_id : ::String, @views : ::Int32, @via_bot_user_id : ::Int32, @ttl_expires_in : ::Float64, @ttl : ::Int32, @reply_to_message_id : ::Int64, @edit_date : ::Int32, @date : ::Int32, @chat_id : ::Int64, @sender_user_id : ::Int32, @contains_unread_mention : ::Bool = false, @is_channel_post : ::Bool = false, @can_be_deleted_for_all_users : ::Bool = false, @forward_info : Proton::Types::MessageForwardInfo? = nil, @can_be_deleted_only_for_self : ::Bool = false, @can_be_forwarded : ::Bool = false, @can_be_edited : ::Bool = false, @is_outgoing : ::Bool = false, @author_signature : ::String? = nil, @sending_state : Proton::Types::MessageSendingState? = nil, @reply_markup : Proton::Types::ReplyMarkup? = nil)
    end
  end
end
