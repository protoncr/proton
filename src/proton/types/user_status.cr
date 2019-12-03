# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the last time the user was online.
  abstract class UserStatus < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "userStatusEmpty" => Types::UserStatus::Empty,
      "userStatusOnline" => Types::UserStatus::Online,
      "userStatusOffline" => Types::UserStatus::Offline,
      "userStatusRecently" => Types::UserStatus::Recently,
      "userStatusLastWeek" => Types::UserStatus::LastWeek,
      "userStatusLastMonth" => Types::UserStatus::LastMonth
    })
  end
end

require "./user_status/empty"
require "./user_status/online"
require "./user_status/offline"
require "./user_status/recently"
require "./user_status/last_week"
require "./user_status/last_month"
