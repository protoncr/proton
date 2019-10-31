# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A token for Apple Push Notification service.
  # device_token [::String, nil] Device token; may be empty to de-register a device.
  # is_app_sandbox [::Bool] True, if App Sandbox is enabled.
  class DeviceToken::ApplePush < Types::DeviceToken
    property device_token : ::String?
    property is_app_sandbox : ::Bool

    def initialize(@is_app_sandbox : ::Bool, @device_token : ::String? = nil)
    end
  end
end

