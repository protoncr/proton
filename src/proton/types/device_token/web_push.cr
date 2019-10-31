# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A token for web Push API.
  # endpoint [::String, nil] Absolute URL exposed by the push service where the application server can send push
  #   messages; may be empty to de-register a device.
  # p256dh_base64url [::String] Base64url-encoded P-256 elliptic curve Diffie-Hellman public key.
  # auth_base64url [::String] Base64url-encoded authentication secret.
  class DeviceToken::WebPush < Types::DeviceToken
    property endpoint : ::String?
    property p256dh_base64url : ::String
    property auth_base64url : ::String

    def initialize(@p256dh_base64url : ::String, @auth_base64url : ::String, @endpoint : ::String? = nil)
    end
  end
end

