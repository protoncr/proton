# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A deleted user or deleted bot.
  # No information on the user besides the user_id is available.
  # It is not possible to perform any active actions on this type of user.
  class UserType::Deleted < Types::UserType
    include JSON::Serializable
  end
end
