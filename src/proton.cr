require "habitat"

require "./tdlib/tdlib"
require "./proton/*"

module Proton
  class Client
    Habitat.create do
      setting encryption_key : String

      # Client
      setting api_id : Int32
      setting api_hash : String
      setting use_test_dc : Bool = false
      setting database_directory : String = ".proton/db"
      setting files_directory : String = ".proton/data"
      setting use_chat_info_database : Bool = true
      setting use_secret_chats : Bool = true
      setting use_message_database : Bool = true
      setting system_language_code : String = "en"
      setting device_model : String = "Desktop"
      setting system_version : String = "Linux"
      setting application_version : String = Proton::VERSION
      setting enable_storage_optimizer : Bool = true
      setting ignore_file_names : Bool = false
      setting log_file_path : String = "~/.proton/tdlib.log"
    end
  end
end

include Proton

Client.configure do |config|
  config.encryption_key = "tIXiGBupL3VCFOwyEpG5JjMuAIGRLKlL"

  config.api_id = 65534
  config.api_hash = "e3e522e32853d0767df7b2113d5e2497"
end

client = Client.new

def mark_all_as_read(message, client)
  spawn do
    # client.edit_message_text(message.chat_id, message.id, Types::InputMessageContent::Text.new(Types::FormattedText.new("Clearing unread counts...", [] of Types::TextEntity))).get
    chat_ids = client.get_chats(Int64::MAX.to_s, 0, Int32::MAX).get.chat_ids
    chats = chat_ids.each do |id|
      chat = client.get_chat(id).get
      if chat.unread_count > 0 && (last_message = chat.last_message)
        client.view_messages(chat.id, [last_message.id], true)
      end
    end
    # client.edit_message_text(message.chat_id, message.id, Types::InputMessageContent::Text.new(Types::FormattedText.new("Clearing unread counts...", [] of Types::TextEntity))).get
  end
end

client.on(Types::Update::NewMessage) do |message|
  message = message.message
  case message.content
  when Types::MessageContent::Text
    text = message.content.as(Types::MessageContent::Text).text.text
    if text.strip == "!markread"
      mark_all_as_read(message, client)
    end
  end
end

client.run
