# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A token for Firebase Cloud Messaging.
  class DeviceToken::FirebaseCloudMessaging < Types::DeviceToken
    include JSON::Serializable

    # Device registration token; may be empty to de-register a device
    property token : ::String? = nil

    # True, if push notifications should be additionally encrypted
    property encrypt : ::Bool = false

    def initialize(@token : ::String? = nil, @encrypt : ::Bool = false)
    end
  end
end
