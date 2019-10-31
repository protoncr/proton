# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A token for Simple Push API for Firefox OS.
  # endpoint [::String, nil] Absolute URL exposed by the push service where the application server can send push
  #   messages; may be empty to de-register a device.
  class DeviceToken::SimplePush < Types::DeviceToken
    property endpoint : ::String?

    def initialize(@endpoint : ::String? = nil)
    end
  end
end

