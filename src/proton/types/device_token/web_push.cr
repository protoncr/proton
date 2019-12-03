# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A token for web Push API.
  class DeviceToken::WebPush < Types::DeviceToken
    include JSON::Serializable

    # Base64url-encoded P-256 elliptic curve Diffie-Hellman public key
    property p256dh_base64url : ::String

    # Base64url-encoded authentication secret
    property auth_base64url : ::String

    # Absolute URL exposed by the push service where the application server can send push messages; may be empty to de-register a device
    property endpoint : ::String? = nil

    def initialize(@p256dh_base64url : ::String, @auth_base64url : ::String, @endpoint : ::String? = nil)
    end
  end
end
