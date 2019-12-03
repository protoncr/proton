# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the type of a network.
  abstract class NetworkType < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "networkTypeNone" => Types::NetworkType::None,
      "networkTypeMobile" => Types::NetworkType::Mobile,
      "networkTypeMobileRoaming" => Types::NetworkType::MobileRoaming,
      "networkTypeWiFi" => Types::NetworkType::WiFi,
      "networkTypeOther" => Types::NetworkType::Other
    })
  end
end

require "./network_type/none"
require "./network_type/mobile"
require "./network_type/mobile_roaming"
require "./network_type/wi_fi"
require "./network_type/other"
