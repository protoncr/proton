# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A token for Tizen Push Service.
  class DeviceToken::TizenPush < Types::DeviceToken
    include JSON::Serializable

    # Push service registration identifier; may be empty to de-register a device
    property reg_id : ::String? = nil

    def initialize(@reg_id : ::String? = nil)
    end
  end
end
