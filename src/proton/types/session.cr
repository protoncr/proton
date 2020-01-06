# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about one session in a Telegram application used by the current user.
  # Sessions should be shown to the user in the returned order.
  class Session < Types::Base
    include JSON::Serializable

    # Session identifier
    property id : ::String

    # Telegram API identifier, as provided by the application
    property api_id : ::Int32

    # Name of the application, as provided by the application
    property application_name : ::String

    # The version of the application, as provided by the application
    property application_version : ::String

    # Model of the device the application has been run or is running on, as provided by the application
    property device_model : ::String

    # Operating system the application has been run or is running on, as provided by the application
    property platform : ::String

    # Version of the operating system the application has been run or is running on, as provided by the application
    property system_version : ::String

    # Point in time (Unix timestamp) when the user has logged in
    property log_in_date : ::Int32

    # Point in time (Unix timestamp) when the session was last used
    property last_active_date : ::Int32

    # IP address from which the session was created, in human-readable format
    property ip : ::String

    # A two-letter country code for the country from which the session was created, based on the IP address
    property country : ::String

    # Region code from which the session was created, based on the IP address
    property region : ::String

    # True, if this session is the current session
    property is_current : ::Bool = false

    # True, if a password is needed to complete authorization of the session
    property is_password_pending : ::Bool = false

    # True, if the application is an official application or uses the api_id of an official application
    property is_official_application : ::Bool = false

    def initialize(@id : ::String, @api_id : ::Int32, @application_name : ::String, @application_version : ::String, @device_model : ::String, @platform : ::String, @system_version : ::String, @log_in_date : ::Int32, @last_active_date : ::Int32, @ip : ::String, @country : ::String, @region : ::String, @is_current : ::Bool = false, @is_password_pending : ::Bool = false, @is_official_application : ::Bool = false)
    end
  end
end
