# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A token for Apple Push Notification service VoIP notifications.
  class DeviceToken::ApplePushVoIP < Types::DeviceToken
    include JSON::Serializable

    # True, if App Sandbox is enabled
    property is_app_sandbox : ::Bool

    # True, if push notifications should be additionally encrypted
    property encrypt : ::Bool

    # Device token; may be empty to de-register a device
    property device_token : ::String? = nil

    def initialize(@is_app_sandbox : ::Bool, @encrypt : ::Bool, @device_token : ::String? = nil)
    end
  end
end
