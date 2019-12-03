# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the address of UDP reflectors.
  class CallConnection < Types::Base
    include JSON::Serializable

    # Reflector identifier
    property id : ::Int64

    # IPv4 reflector address
    property ip : ::String

    # IPv6 reflector address
    property ipv6 : ::String

    # Reflector port number
    property port : ::Int32

    # Connection peer tag
    property peer_tag : ::String

    def initialize(@id : ::Int64, @ip : ::String, @ipv6 : ::String, @port : ::Int32, @peer_tag : ::String)
    end
  end
end
