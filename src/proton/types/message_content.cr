# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the content of a message.
  abstract class MessageContent < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "messageText" => Types::MessageContent::Text,
      "messageAnimation" => Types::MessageContent::Animation,
      "messageAudio" => Types::MessageContent::Audio,
      "messageDocument" => Types::MessageContent::Document,
      "messagePhoto" => Types::MessageContent::Photo,
      "messageExpiredPhoto" => Types::MessageContent::ExpiredPhoto,
      "messageSticker" => Types::MessageContent::Sticker,
      "messageVideo" => Types::MessageContent::Video,
      "messageExpiredVideo" => Types::MessageContent::ExpiredVideo,
      "messageVideoNote" => Types::MessageContent::VideoNote,
      "messageVoiceNote" => Types::MessageContent::VoiceNote,
      "messageLocation" => Types::MessageContent::Location,
      "messageVenue" => Types::MessageContent::Venue,
      "messageContact" => Types::MessageContent::Contact,
      "messageGame" => Types::MessageContent::Game,
      "messagePoll" => Types::MessageContent::Poll,
      "messageInvoice" => Types::MessageContent::Invoice,
      "messageCall" => Types::MessageContent::Call,
      "messageBasicGroupChatCreate" => Types::MessageContent::BasicGroupChatCreate,
      "messageSupergroupChatCreate" => Types::MessageContent::SupergroupChatCreate,
      "messageChatChangeTitle" => Types::MessageContent::ChatChangeTitle,
      "messageChatChangePhoto" => Types::MessageContent::ChatChangePhoto,
      "messageChatDeletePhoto" => Types::MessageContent::ChatDeletePhoto,
      "messageChatAddMembers" => Types::MessageContent::ChatAddMembers,
      "messageChatJoinByLink" => Types::MessageContent::ChatJoinByLink,
      "messageChatDeleteMember" => Types::MessageContent::ChatDeleteMember,
      "messageChatUpgradeTo" => Types::MessageContent::ChatUpgradeTo,
      "messageChatUpgradeFrom" => Types::MessageContent::ChatUpgradeFrom,
      "messagePinMessage" => Types::MessageContent::PinMessage,
      "messageScreenshotTaken" => Types::MessageContent::ScreenshotTaken,
      "messageChatSetTtl" => Types::MessageContent::ChatSetTtl,
      "messageCustomServiceAction" => Types::MessageContent::CustomServiceAction,
      "messageGameScore" => Types::MessageContent::GameScore,
      "messagePaymentSuccessful" => Types::MessageContent::PaymentSuccessful,
      "messagePaymentSuccessfulBot" => Types::MessageContent::PaymentSuccessfulBot,
      "messageContactRegistered" => Types::MessageContent::ContactRegistered,
      "messageWebsiteConnected" => Types::MessageContent::WebsiteConnected,
      "messagePassportDataSent" => Types::MessageContent::PassportDataSent,
      "messagePassportDataReceived" => Types::MessageContent::PassportDataReceived,
      "messageUnsupported" => Types::MessageContent::Unsupported
    })
  end
end

require "./message_content/text"
require "./message_content/animation"
require "./message_content/audio"
require "./message_content/document"
require "./message_content/photo"
require "./message_content/expired_photo"
require "./message_content/sticker"
require "./message_content/video"
require "./message_content/expired_video"
require "./message_content/video_note"
require "./message_content/voice_note"
require "./message_content/location"
require "./message_content/venue"
require "./message_content/contact"
require "./message_content/game"
require "./message_content/poll"
require "./message_content/invoice"
require "./message_content/call"
require "./message_content/basic_group_chat_create"
require "./message_content/supergroup_chat_create"
require "./message_content/chat_change_title"
require "./message_content/chat_change_photo"
require "./message_content/chat_delete_photo"
require "./message_content/chat_add_members"
require "./message_content/chat_join_by_link"
require "./message_content/chat_delete_member"
require "./message_content/chat_upgrade_to"
require "./message_content/chat_upgrade_from"
require "./message_content/pin_message"
require "./message_content/screenshot_taken"
require "./message_content/chat_set_ttl"
require "./message_content/custom_service_action"
require "./message_content/game_score"
require "./message_content/payment_successful"
require "./message_content/payment_successful_bot"
require "./message_content/contact_registered"
require "./message_content/website_connected"
require "./message_content/passport_data_sent"
require "./message_content/passport_data_received"
require "./message_content/unsupported"
