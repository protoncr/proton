require "habitat"

require "./tdlib/tdlib"
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

Proton::Client.configure do |config|
  config.encryption_key = ""

  config.api_id = ""
  config.api_hash = ""
end

client = Proton::Client.new(encryption_key: "test encryption key")
client.set_log_file_path("./tdlib.log")

client.on("updateAuthorizationState") do |update|
  next unless update.dig("authorization_state", "@type") == "authorizationStateWaitPhoneNumber"
  print "Please enter your phone number: "
  phone = gets.to_s.strip
  payload = {
    "@type" => "setAuthenticationPhoneNumber",
    "phone_number" => phone
  }

  client.broadcast(payload) { }
end

client.on("updateAuthorizationState") do |update|
  next unless update.dig("authorization_state", "@type") == "authorizationStateWaitCode"
  print "Please enter the code you received from Telegram: "
  code = gets.to_s.strip
  payload = {
    "@type" => "checkAuthenticationCode",
    "code" => code
  }

  client.broadcast(payload) { }
end

client.on("updateAuthorizationState") do |update|
  next unless update.dig("authorization_state", "@type") == "authorizationStateWaitRegistration"
  puts update["authorization_state"]["terms_of_service"]["text"]["text"].as_s
  print "Please enter your first name: "
  first_name = gets.to_s.strip
  print "Please enter your last name: "
  last_name = gets.to_s.strip
  payload = {
    "@type" => "registerUser",
    "first_name" => first_name,
    "last_name" => last_name,

  }

  client.broadcast(payload) { }
end

client.on("updateAuthorizationState") do |update|
  next unless update.dig("authorization_state", "@type") == "authorizationStateWaitPassword"
  print "Please enter your password: "
  password = gets.to_s.strip
  payload = {
    "@type" => "checkAuthenticationPassword",
    "password" => password
  }
end

client.on("updateAuthorizationState") do |update|
  next unless update.dig("authorization_state", "@type") == "authorizationStateReady"
  me = client.broadcast({"@type" => "getMe"}) do |me|
    pp me
    client.close
  end
end

client.run_until_finished
