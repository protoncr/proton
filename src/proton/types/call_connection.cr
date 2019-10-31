# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the address of UDP reflectors.
  # id [::Int64] Reflector identifier.
  # ip [::String] IPv4 reflector address.
  # ipv6 [::String] IPv6 reflector address.
  # port [::Int32] Reflector port number.
  # peer_tag [::String] Connection peer tag.
  class CallConnection < Types::Base
    property id : ::Int64
    property ip : ::String
    property ipv6 : ::String
    property port : ::Int32
    property peer_tag : ::String

    def initialize(@id : ::Int64, @ip : ::String, @ipv6 : ::String, @port : ::Int32, @peer_tag : ::String)
    end
  end
end

