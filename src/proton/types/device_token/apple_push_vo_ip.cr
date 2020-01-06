# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A token for Apple Push Notification service VoIP notifications.
  class DeviceToken::ApplePushVoIP < Types::DeviceToken
    include JSON::Serializable

    # Device token; may be empty to de-register a device
    property device_token : ::String? = nil

    # True, if App Sandbox is enabled
    property is_app_sandbox : ::Bool = false

    # True, if push notifications should be additionally encrypted
    property encrypt : ::Bool = false

    def initialize(@device_token : ::String? = nil, @is_app_sandbox : ::Bool = false, @encrypt : ::Bool = false)
    end
  end
end
