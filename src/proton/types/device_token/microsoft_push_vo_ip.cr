# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A token for Microsoft Push Notification Service VoIP channel.
  # channel_uri [::String, nil] Push notification channel URI; may be empty to de-register a device.
  class DeviceToken::MicrosoftPushVoIP < Types::DeviceToken
    property channel_uri : ::String?

    def initialize(@channel_uri : ::String? = nil)
    end
  end
end

