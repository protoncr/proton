# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the current state of the connection to Telegram servers.
  class ConnectionState < Types::Base

    def initialize()
    end
  end
end

require "./connection_state/waiting_for_network"
  require "./connection_state/connecting_to_proxy"
  require "./connection_state/connecting"
  require "./connection_state/updating"
  require "./connection_state/ready"