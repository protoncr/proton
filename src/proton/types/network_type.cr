# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the type of a network.
  class NetworkType < Types::Base

    def initialize()
    end
  end
end

require "./network_type/none"
  require "./network_type/mobile"
  require "./network_type/mobile_roaming"
  require "./network_type/wi_fi"
  require "./network_type/other"