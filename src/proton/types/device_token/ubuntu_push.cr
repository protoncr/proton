# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A token for Ubuntu Push Client service.
  # token [::String, nil] Token; may be empty to de-register a device.
  class DeviceToken::UbuntuPush < Types::DeviceToken
    property token : ::String?

    def initialize(@token : ::String? = nil)
    end
  end
end

