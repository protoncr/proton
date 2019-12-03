# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A token for Ubuntu Push Client service.
  class DeviceToken::UbuntuPush < Types::DeviceToken
    include JSON::Serializable

    # Token; may be empty to de-register a device
    property token : ::String? = nil

    def initialize(@token : ::String? = nil)
    end
  end
end
