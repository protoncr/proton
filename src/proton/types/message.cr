# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a message.
  # id [::Int64] Message identifier, unique for the chat to which the message belongs.
  # sender_user_id [::Int32] Identifier of the user who sent the message; 0 if unknown.
  #   Currently, it is unknown for channel posts and for channel posts automatically forwarded to discussion group.
  # chat_id [::Int64] Chat identifier.
  # sending_state [Proton::Types::MessageSendingState, nil] Information about the sending state of the message; may be
  #   null.
  # is_outgoing [::Bool] True, if the message is outgoing.
  # can_be_edited [::Bool] True, if the message can be edited.
  #   For live location and poll messages this fields shows, whether editMessageLiveLocation or stopPoll can be used
  #   with this message by the client.
  # can_be_forwarded [::Bool] True, if the message can be forwarded.
  # can_be_deleted_only_for_self [::Bool] True, if the message can be deleted only for the current user while other
  #   users will continue to see it.
  # can_be_deleted_for_all_users [::Bool] True, if the message can be deleted for all users.
  # is_channel_post [::Bool] True, if the message is a channel post.
  #   All messages to channels are channel posts, all other messages are not channel posts.
  # contains_unread_mention [::Bool] True, if the message contains an unread mention for the current user.
  # date [::Int32] Point in time (Unix timestamp) when the message was sent.
  # edit_date [::Int32] Point in time (Unix timestamp) when the message was last edited.
  # forward_info [Proton::Types::MessageForwardInfo, nil] Information about the initial message sender; may be null.
  # reply_to_message_id [::Int64] If non-zero, the identifier of the message this message is replying to; can be the
  #   identifier of a deleted message.
  # ttl [::Int32] For self-destructing messages, the message's TTL (Time To Live), in seconds; 0 if none.
  #   TDLib will send updateDeleteMessages or updateMessageContent once the TTL expires.
  # ttl_expires_in [::Float64] Time left before the message expires, in seconds.
  # via_bot_user_id [::Int32] If non-zero, the user identifier of the bot through which this message was sent.
  # author_signature [::String, nil] For channel posts, optional author signature.
  # views [::Int32] Number of times this message was viewed.
  # media_album_id [::Int64] Unique identifier of an album this message belongs to.
  #   Only photos and videos can be grouped together in albums.
  # content [Proton::Types::MessageContent] Content of the message.
  # reply_markup [Proton::Types::ReplyMarkup, nil] Reply markup for the message; may be null.
  class Message < Types::Base
    property id : ::Int64
    property sender_user_id : ::Int32
    property chat_id : ::Int64
    property sending_state : Proton::Types::MessageSendingState?
    property is_outgoing : ::Bool
    property can_be_edited : ::Bool
    property can_be_forwarded : ::Bool
    property can_be_deleted_only_for_self : ::Bool
    property can_be_deleted_for_all_users : ::Bool
    property is_channel_post : ::Bool
    property contains_unread_mention : ::Bool
    property date : ::Int32
    property edit_date : ::Int32
    property forward_info : Proton::Types::MessageForwardInfo?
    property reply_to_message_id : ::Int64
    property ttl : ::Int32
    property ttl_expires_in : ::Float64
    property via_bot_user_id : ::Int32
    property author_signature : ::String?
    property views : ::Int32
    property media_album_id : ::Int64
    property content : Proton::Types::MessageContent
    property reply_markup : Proton::Types::ReplyMarkup?

    def initialize(@id : ::Int64, @content : Proton::Types::MessageContent, @media_album_id : ::Int64, @views : ::Int32, @via_bot_user_id : ::Int32, @ttl_expires_in : ::Float64, @ttl : ::Int32, @reply_to_message_id : ::Int64, @edit_date : ::Int32, @date : ::Int32, @contains_unread_mention : ::Bool, @is_channel_post : ::Bool, @can_be_deleted_for_all_users : ::Bool, @can_be_deleted_only_for_self : ::Bool, @can_be_forwarded : ::Bool, @can_be_edited : ::Bool, @is_outgoing : ::Bool, @chat_id : ::Int64, @sender_user_id : ::Int32, @forward_info : Proton::Types::MessageForwardInfo? = nil, @author_signature : ::String? = nil, @sending_state : Proton::Types::MessageSendingState? = nil, @reply_markup : Proton::Types::ReplyMarkup? = nil)
    end
  end
end

