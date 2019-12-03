# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about one website the current user is logged in with Telegram.
  class ConnectedWebsite < Types::Base
    include JSON::Serializable

    # Website identifier
    property id : ::Int64

    # The domain name of the website
    property domain_name : ::String

    # User identifier of a bot linked with the website
    property bot_user_id : ::Int32

    # The version of a browser used to log in
    property browser : ::String

    # Operating system the browser is running on
    property platform : ::String

    # Point in time (Unix timestamp) when the user was logged in
    property log_in_date : ::Int32

    # Point in time (Unix timestamp) when obtained authorization was last used
    property last_active_date : ::Int32

    # IP address from which the user was logged in, in human-readable format
    property ip : ::String

    # Human-readable description of a country and a region, from which the user was logged in, based on the IP address
    property location : ::String

    def initialize(@id : ::Int64, @domain_name : ::String, @bot_user_id : ::Int32, @browser : ::String, @platform : ::String, @log_in_date : ::Int32, @last_active_date : ::Int32, @ip : ::String, @location : ::String)
    end
  end
end
