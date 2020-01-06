# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Specifies the supported call protocols.
  class CallProtocol < Types::Base
    include JSON::Serializable

    # Minimum supported API layer; use 65
    property min_layer : ::Int32

    # Maximum supported API layer; use 65
    property max_layer : ::Int32

    # True, if UDP peer-to-peer connections are supported
    property udp_p2p : ::Bool = false

    # True, if connection through UDP reflectors is supported
    property udp_reflector : ::Bool = false

    def initialize(@min_layer : ::Int32, @max_layer : ::Int32, @udp_p2p : ::Bool = false, @udp_reflector : ::Bool = false)
    end
  end
end
