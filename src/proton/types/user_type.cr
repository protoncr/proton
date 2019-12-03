# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the type of the user.
  # The following types are possible: regular users, deleted users and bots.
  abstract class UserType < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "userTypeRegular" => Types::UserType::Regular,
      "userTypeDeleted" => Types::UserType::Deleted,
      "userTypeBot" => Types::UserType::Bot,
      "userTypeUnknown" => Types::UserType::Unknown
    })
  end
end

require "./user_type/regular"
require "./user_type/deleted"
require "./user_type/bot"
require "./user_type/unknown"
