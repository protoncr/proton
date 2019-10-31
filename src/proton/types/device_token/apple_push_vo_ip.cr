# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A token for Apple Push Notification service VoIP notifications.
  # device_token [::String, nil] Device token; may be empty to de-register a device.
  # is_app_sandbox [::Bool] True, if App Sandbox is enabled.
  # encrypt [::Bool] True, if push notifications should be additionally encrypted.
  class DeviceToken::ApplePushVoIP < Types::DeviceToken
    property device_token : ::String?
    property is_app_sandbox : ::Bool
    property encrypt : ::Bool

    def initialize(@is_app_sandbox : ::Bool, @encrypt : ::Bool, @device_token : ::String? = nil)
    end
  end
end

