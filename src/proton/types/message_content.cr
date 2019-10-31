# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the content of a message.
  class MessageContent < Types::Base

    def initialize()
    end
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