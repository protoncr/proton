# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A token for Microsoft Push Notification Service.
  class DeviceToken::MicrosoftPush < Types::DeviceToken
    include JSON::Serializable

    # Push notification channel URI; may be empty to de-register a device
    property channel_uri : ::String? = nil

    def initialize(@channel_uri : ::String? = nil)
    end
  end
end
