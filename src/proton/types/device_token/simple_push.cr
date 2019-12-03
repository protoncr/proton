# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A token for Simple Push API for Firefox OS.
  class DeviceToken::SimplePush < Types::DeviceToken
    include JSON::Serializable

    # Absolute URL exposed by the push service where the application server can send push messages; may be empty to de-register a device
    property endpoint : ::String? = nil

    def initialize(@endpoint : ::String? = nil)
    end
  end
end
