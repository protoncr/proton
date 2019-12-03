# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A token for Windows Push Notification Services.
  class DeviceToken::WindowsPush < Types::DeviceToken
    include JSON::Serializable

    # The access token that will be used to send notifications; may be empty to de-register a device
    property access_token : ::String? = nil

    def initialize(@access_token : ::String? = nil)
    end
  end
end
