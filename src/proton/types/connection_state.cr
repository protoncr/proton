# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the current state of the connection to Telegram servers.
  abstract class ConnectionState < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "connectionStateWaitingForNetwork" => Types::ConnectionState::WaitingForNetwork,
      "connectionStateConnectingToProxy" => Types::ConnectionState::ConnectingToProxy,
      "connectionStateConnecting" => Types::ConnectionState::Connecting,
      "connectionStateUpdating" => Types::ConnectionState::Updating,
      "connectionStateReady" => Types::ConnectionState::Ready
    })
  end
end

require "./connection_state/waiting_for_network"
require "./connection_state/connecting_to_proxy"
require "./connection_state/connecting"
require "./connection_state/updating"
require "./connection_state/ready"
