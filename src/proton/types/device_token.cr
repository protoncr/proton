# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a data needed to subscribe for push notifications through registerDevice method.
  # To use specific push notification service, you must specify the correct application platform and upload valid
  #   server authentication data at https://my.telegram.org.
  abstract class DeviceToken < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "deviceTokenFirebaseCloudMessaging" => Types::DeviceToken::FirebaseCloudMessaging,
      "deviceTokenApplePush" => Types::DeviceToken::ApplePush,
      "deviceTokenApplePushVoIP" => Types::DeviceToken::ApplePushVoIP,
      "deviceTokenWindowsPush" => Types::DeviceToken::WindowsPush,
      "deviceTokenMicrosoftPush" => Types::DeviceToken::MicrosoftPush,
      "deviceTokenMicrosoftPushVoIP" => Types::DeviceToken::MicrosoftPushVoIP,
      "deviceTokenWebPush" => Types::DeviceToken::WebPush,
      "deviceTokenSimplePush" => Types::DeviceToken::SimplePush,
      "deviceTokenUbuntuPush" => Types::DeviceToken::UbuntuPush,
      "deviceTokenBlackBerryPush" => Types::DeviceToken::BlackBerryPush,
      "deviceTokenTizenPush" => Types::DeviceToken::TizenPush
    })
  end
end

require "./device_token/firebase_cloud_messaging"
require "./device_token/apple_push"
require "./device_token/apple_push_vo_ip"
require "./device_token/windows_push"
require "./device_token/microsoft_push"
require "./device_token/microsoft_push_vo_ip"
require "./device_token/web_push"
require "./device_token/simple_push"
require "./device_token/ubuntu_push"
require "./device_token/black_berry_push"
require "./device_token/tizen_push"
