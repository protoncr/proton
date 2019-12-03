# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A token for BlackBerry Push Service.
  class DeviceToken::BlackBerryPush < Types::DeviceToken
    include JSON::Serializable

    # Token; may be empty to de-register a device
    property token : ::String? = nil

    def initialize(@token : ::String? = nil)
    end
  end
end
