# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a chat event.
  abstract class ChatEventAction < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "chatEventMessageEdited" => Types::ChatEventAction::MessageEdited,
      "chatEventMessageDeleted" => Types::ChatEventAction::MessageDeleted,
      "chatEventPollStopped" => Types::ChatEventAction::PollStopped,
      "chatEventMessagePinned" => Types::ChatEventAction::MessagePinned,
      "chatEventMessageUnpinned" => Types::ChatEventAction::MessageUnpinned,
      "chatEventMemberJoined" => Types::ChatEventAction::MemberJoined,
      "chatEventMemberLeft" => Types::ChatEventAction::MemberLeft,
      "chatEventMemberInvited" => Types::ChatEventAction::MemberInvited,
      "chatEventMemberPromoted" => Types::ChatEventAction::MemberPromoted,
      "chatEventMemberRestricted" => Types::ChatEventAction::MemberRestricted,
      "chatEventTitleChanged" => Types::ChatEventAction::TitleChanged,
      "chatEventPermissionsChanged" => Types::ChatEventAction::PermissionsChanged,
      "chatEventDescriptionChanged" => Types::ChatEventAction::DescriptionChanged,
      "chatEventUsernameChanged" => Types::ChatEventAction::UsernameChanged,
      "chatEventPhotoChanged" => Types::ChatEventAction::PhotoChanged,
      "chatEventInvitesToggled" => Types::ChatEventAction::InvitesToggled,
      "chatEventSignMessagesToggled" => Types::ChatEventAction::SignMessagesToggled,
      "chatEventStickerSetChanged" => Types::ChatEventAction::StickerSetChanged,
      "chatEventIsAllHistoryAvailableToggled" => Types::ChatEventAction::IsAllHistoryAvailableToggled
    })
  end
end

require "./chat_event_action/message_edited"
require "./chat_event_action/message_deleted"
require "./chat_event_action/poll_stopped"
require "./chat_event_action/message_pinned"
require "./chat_event_action/message_unpinned"
require "./chat_event_action/member_joined"
require "./chat_event_action/member_left"
require "./chat_event_action/member_invited"
require "./chat_event_action/member_promoted"
require "./chat_event_action/member_restricted"
require "./chat_event_action/title_changed"
require "./chat_event_action/permissions_changed"
require "./chat_event_action/description_changed"
require "./chat_event_action/username_changed"
require "./chat_event_action/photo_changed"
require "./chat_event_action/invites_toggled"
require "./chat_event_action/sign_messages_toggled"
require "./chat_event_action/sticker_set_changed"
require "./chat_event_action/is_all_history_available_toggled"
