# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about one website the current user is logged in with Telegram.
  # id [::Int64] Website identifier.
  # domain_name [::String] The domain name of the website.
  # bot_user_id [::Int32] User identifier of a bot linked with the website.
  # browser [::String] The version of a browser used to log in.
  # platform [::String] Operating system the browser is running on.
  # log_in_date [::Int32] Point in time (Unix timestamp) when the user was logged in.
  # last_active_date [::Int32] Point in time (Unix timestamp) when obtained authorization was last used.
  # ip [::String] IP address from which the user was logged in, in human-readable format.
  # location [::String] Human-readable description of a country and a region, from which the user was logged in, based
  #   on the IP address.
  class ConnectedWebsite < Types::Base
    property id : ::Int64
    property domain_name : ::String
    property bot_user_id : ::Int32
    property browser : ::String
    property platform : ::String
    property log_in_date : ::Int32
    property last_active_date : ::Int32
    property ip : ::String
    property location : ::String

    def initialize(@id : ::Int64, @domain_name : ::String, @bot_user_id : ::Int32, @browser : ::String, @platform : ::String, @log_in_date : ::Int32, @last_active_date : ::Int32, @ip : ::String, @location : ::String)
    end
  end
end

