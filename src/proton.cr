require "habitat"

require "./tdlib/tdlib"
require "./core_extensions/*"
require "./proton/*"

module Proton
  class Client
    Habitat.create do
      setting encryption_key : String

      # Client
      setting api_id : String
      setting api_hash : String
      setting use_test_dc : Bool = true
      setting database_directory : String = File.join(Path.home.to_s, ".protoncr/db")
      setting files_directory : String = File.join(Path.home.to_s, ".protoncr/data")
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

# Proton::Client.configure do |config|
#   config.encryption_key = "tIXiGBupL3VCFOwyEpG5JjMuAIGRLKlL"

#   config.api_id = "65534"
#   config.api_hash = "e3e522e32853d0767df7b2113d5e2497"
# end

# client = Proton::Client.new
# client.set_log_file_path("./tdlib.log")

# # pp client.send_and_receive({"@type" => "getAuthorizationState"})

# client.connect


json = <<-JSON
{
  "@type": "updateAuthorizationState",
  "authorization_state": {
    "@type": "authorizationStateWaitTdlibParameters"
  }
}
JSON

parsed = Proton::Types::Base.from_json(json)
pp parsed
