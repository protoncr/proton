# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains content of a push message notification.
  abstract class PushMessageContent < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "pushMessageContentHidden" => Types::PushMessageContent::Hidden,
      "pushMessageContentAnimation" => Types::PushMessageContent::Animation,
      "pushMessageContentAudio" => Types::PushMessageContent::Audio,
      "pushMessageContentContact" => Types::PushMessageContent::Contact,
      "pushMessageContentContactRegistered" => Types::PushMessageContent::ContactRegistered,
      "pushMessageContentDocument" => Types::PushMessageContent::Document,
      "pushMessageContentGame" => Types::PushMessageContent::Game,
      "pushMessageContentGameScore" => Types::PushMessageContent::GameScore,
      "pushMessageContentInvoice" => Types::PushMessageContent::Invoice,
      "pushMessageContentLocation" => Types::PushMessageContent::Location,
      "pushMessageContentPhoto" => Types::PushMessageContent::Photo,
      "pushMessageContentPoll" => Types::PushMessageContent::Poll,
      "pushMessageContentScreenshotTaken" => Types::PushMessageContent::ScreenshotTaken,
      "pushMessageContentSticker" => Types::PushMessageContent::Sticker,
      "pushMessageContentText" => Types::PushMessageContent::Text,
      "pushMessageContentVideo" => Types::PushMessageContent::Video,
      "pushMessageContentVideoNote" => Types::PushMessageContent::VideoNote,
      "pushMessageContentVoiceNote" => Types::PushMessageContent::VoiceNote,
      "pushMessageContentBasicGroupChatCreate" => Types::PushMessageContent::BasicGroupChatCreate,
      "pushMessageContentChatAddMembers" => Types::PushMessageContent::ChatAddMembers,
      "pushMessageContentChatChangePhoto" => Types::PushMessageContent::ChatChangePhoto,
      "pushMessageContentChatChangeTitle" => Types::PushMessageContent::ChatChangeTitle,
      "pushMessageContentChatDeleteMember" => Types::PushMessageContent::ChatDeleteMember,
      "pushMessageContentChatJoinByLink" => Types::PushMessageContent::ChatJoinByLink,
      "pushMessageContentMessageForwards" => Types::PushMessageContent::MessageForwards,
      "pushMessageContentMediaAlbum" => Types::PushMessageContent::MediaAlbum
    })
  end
end

require "./push_message_content/hidden"
require "./push_message_content/animation"
require "./push_message_content/audio"
require "./push_message_content/contact"
require "./push_message_content/contact_registered"
require "./push_message_content/document"
require "./push_message_content/game"
require "./push_message_content/game_score"
require "./push_message_content/invoice"
require "./push_message_content/location"
require "./push_message_content/photo"
require "./push_message_content/poll"
require "./push_message_content/screenshot_taken"
require "./push_message_content/sticker"
require "./push_message_content/text"
require "./push_message_content/video"
require "./push_message_content/video_note"
require "./push_message_content/voice_note"
require "./push_message_content/basic_group_chat_create"
require "./push_message_content/chat_add_members"
require "./push_message_content/chat_change_photo"
require "./push_message_content/chat_change_title"
require "./push_message_content/chat_delete_member"
require "./push_message_content/chat_join_by_link"
require "./push_message_content/message_forwards"
require "./push_message_content/media_album"
