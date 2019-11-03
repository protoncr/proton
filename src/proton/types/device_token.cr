# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a data needed to subscribe for push notifications through registerDevice method.
  # To use specific push notification service, you must specify the correct application platform and upload valid
  #   server authentication data at https://my.telegram.org.
  class DeviceToken < Types::Base

    def initialize()
    end
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