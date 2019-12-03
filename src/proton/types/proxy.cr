# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a proxy server.
  class Proxy < Types::Base
    include JSON::Serializable

    # Unique identifier of the proxy
    property id : ::Int32

    # Proxy server IP address
    property server : ::String

    # Proxy server port
    property port : ::Int32

    # Point in time (Unix timestamp) when the proxy was last used; 0 if never
    property last_used_date : ::Int32

    # True, if the proxy is enabled now
    property is_enabled : ::Bool

    # Type of the proxy
    property type : Proton::Types::ProxyType

    def initialize(@id : ::Int32, @server : ::String, @port : ::Int32, @last_used_date : ::Int32, @is_enabled : ::Bool, @type : Proton::Types::ProxyType)
    end
  end
end
