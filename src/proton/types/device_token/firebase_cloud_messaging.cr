# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A token for Firebase Cloud Messaging.
  # token [::String, nil] Device registration token; may be empty to de-register a device.
  # encrypt [::Bool] True, if push notifications should be additionally encrypted.
  class DeviceToken::FirebaseCloudMessaging < Types::DeviceToken
    property token : ::String?
    property encrypt : ::Bool

    def initialize(@encrypt : ::Bool, @token : ::String? = nil)
    end
  end
end

