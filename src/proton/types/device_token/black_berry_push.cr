# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A token for BlackBerry Push Service.
  # token [::String, nil] Token; may be empty to de-register a device.
  class DeviceToken::BlackBerryPush < Types::DeviceToken
    property token : ::String?

    def initialize(@token : ::String? = nil)
    end
  end
end

