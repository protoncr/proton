# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about one session in a Telegram application used by the current user.
  # Sessions should be shown to the user in the returned order.
  # id [::Int64] Session identifier.
  # is_current [::Bool] True, if this session is the current session.
  # is_password_pending [::Bool] True, if a password is needed to complete authorization of the session.
  # api_id [::Int32] Telegram API identifier, as provided by the application.
  # application_name [::String] Name of the application, as provided by the application.
  # application_version [::String] The version of the application, as provided by the application.
  # is_official_application [::Bool] True, if the application is an official application or uses the api_id of an
  #   official application.
  # device_model [::String] Model of the device the application has been run or is running on, as provided by the
  #   application.
  # platform [::String] Operating system the application has been run or is running on, as provided by the application.
  # system_version [::String] Version of the operating system the application has been run or is running on, as
  #   provided by the application.
  # log_in_date [::Int32] Point in time (Unix timestamp) when the user has logged in.
  # last_active_date [::Int32] Point in time (Unix timestamp) when the session was last used.
  # ip [::String] IP address from which the session was created, in human-readable format.
  # country [::String] A two-letter country code for the country from which the session was created, based on the IP
  #   address.
  # region [::String] Region code from which the session was created, based on the IP address.
  class Session < Types::Base
    property id : ::Int64
    property is_current : ::Bool
    property is_password_pending : ::Bool
    property api_id : ::Int32
    property application_name : ::String
    property application_version : ::String
    property is_official_application : ::Bool
    property device_model : ::String
    property platform : ::String
    property system_version : ::String
    property log_in_date : ::Int32
    property last_active_date : ::Int32
    property ip : ::String
    property country : ::String
    property region : ::String

    def initialize(@id : ::Int64, @is_current : ::Bool, @is_password_pending : ::Bool, @api_id : ::Int32, @application_name : ::String, @application_version : ::String, @is_official_application : ::Bool, @device_model : ::String, @platform : ::String, @system_version : ::String, @log_in_date : ::Int32, @last_active_date : ::Int32, @ip : ::String, @country : ::String, @region : ::String)
    end
  end
end

