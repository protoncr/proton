# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Specifies the supported call protocols.
  # udp_p2p [::Bool] True, if UDP peer-to-peer connections are supported.
  # udp_reflector [::Bool] True, if connection through UDP reflectors is supported.
  # min_layer [::Int32] Minimum supported API layer; use 65.
  # max_layer [::Int32] Maximum supported API layer; use 65.
  class CallProtocol < Types::Base
    property udp_p2p : ::Bool
    property udp_reflector : ::Bool
    property min_layer : ::Int32
    property max_layer : ::Int32

    def initialize(@udp_p2p : ::Bool, @udp_reflector : ::Bool, @min_layer : ::Int32, @max_layer : ::Int32)
    end
  end
end

