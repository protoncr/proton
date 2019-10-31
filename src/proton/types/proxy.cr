# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a proxy server.
  # id [::Int32] Unique identifier of the proxy.
  # server [::String] Proxy server IP address.
  # port [::Int32] Proxy server port.
  # last_used_date [::Int32] Point in time (Unix timestamp) when the proxy was last used; 0 if never.
  # is_enabled [::Bool] True, if the proxy is enabled now.
  # type [Proton::Types::ProxyType] Type of the proxy.
  class Proxy < Types::Base
    property id : ::Int32
    property server : ::String
    property port : ::Int32
    property last_used_date : ::Int32
    property is_enabled : ::Bool
    property type : Proton::Types::ProxyType

    def initialize(@id : ::Int32, @server : ::String, @port : ::Int32, @last_used_date : ::Int32, @is_enabled : ::Bool, @type : Proton::Types::ProxyType)
    end
  end
end

