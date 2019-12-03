# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A token for Firebase Cloud Messaging.
  class DeviceToken::FirebaseCloudMessaging < Types::DeviceToken
    include JSON::Serializable

    # True, if push notifications should be additionally encrypted
    property encrypt : ::Bool

    # Device registration token; may be empty to de-register a device
    property token : ::String? = nil

    def initialize(@encrypt : ::Bool, @token : ::String? = nil)
    end
  end
end
