# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Specifies the supported call protocols.
  class CallProtocol < Types::Base
    include JSON::Serializable

    # True, if UDP peer-to-peer connections are supported
    property udp_p2p : ::Bool

    # True, if connection through UDP reflectors is supported
    property udp_reflector : ::Bool

    # Minimum supported API layer; use 65
    property min_layer : ::Int32

    # Maximum supported API layer; use 65
    property max_layer : ::Int32

    def initialize(@udp_p2p : ::Bool, @udp_reflector : ::Bool, @min_layer : ::Int32, @max_layer : ::Int32)
    end
  end
end
