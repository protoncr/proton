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
    end
  end
end
