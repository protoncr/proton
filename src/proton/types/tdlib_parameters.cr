# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains parameters for TDLib initialization.
  # use_test_dc [::Bool] If set to true, the Telegram test environment will be used instead of the production
  #   environment.
  # database_directory [::String, nil] The path to the directory for the persistent database; if empty, the current
  #   working directory will be used.
  # files_directory [::String, nil] The path to the directory for storing files; if empty, database_directory will be
  #   used.
  # use_file_database [::Bool] If set to true, information about downloaded and uploaded files will be saved between
  #   application restarts.
  # use_chat_info_database [::Bool] If set to true, the library will maintain a cache of users, basic groups,
  #   supergroups, channels and secret chats.
  #   Implies use_file_database.
  # use_message_database [::Bool] If set to true, the library will maintain a cache of chats and messages.
  #   Implies use_chat_info_database.
  # use_secret_chats [::Bool] If set to true, support for secret chats will be enabled.
  # api_id [::Int32] Application identifier for Telegram API access, which can be obtained at https://my.telegram.org.
  # api_hash [::String] Application identifier hash for Telegram API access, which can be obtained at
  #   https://my.telegram.org.
  # system_language_code [::String] IETF language tag of the user's operating system language; must be non-empty.
  # device_model [::String] Model of the device the application is being run on; must be non-empty.
  # system_version [::String] Version of the operating system the application is being run on; must be non-empty.
  # application_version [::String] Application version; must be non-empty.
  # enable_storage_optimizer [::Bool] If set to true, old files will automatically be deleted.
  # ignore_file_names [::Bool] If set to true, original file names will be ignored.
  #   Otherwise, downloaded files will be saved under names as close as possible to the original name.
  class TdlibParameters < Types::Base
    property use_test_dc : ::Bool
    property database_directory : ::String?
    property files_directory : ::String?
    property use_file_database : ::Bool
    property use_chat_info_database : ::Bool
    property use_message_database : ::Bool
    property use_secret_chats : ::Bool
    property api_id : ::Int32
    property api_hash : ::String
    property system_language_code : ::String
    property device_model : ::String
    property system_version : ::String
    property application_version : ::String
    property enable_storage_optimizer : ::Bool
    property ignore_file_names : ::Bool

    def initialize(@use_test_dc : ::Bool, @use_file_database : ::Bool, @use_chat_info_database : ::Bool, @use_message_database : ::Bool, @use_secret_chats : ::Bool, @api_id : ::Int32, @api_hash : ::String, @system_language_code : ::String, @device_model : ::String, @system_version : ::String, @application_version : ::String, @enable_storage_optimizer : ::Bool, @ignore_file_names : ::Bool, @database_directory : ::String? = nil, @files_directory : ::String? = nil)
    end
  end
end

