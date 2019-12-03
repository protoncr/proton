# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A URL linking to a user.
  class TMeUrlType::User < Types::TMeUrlType
    include JSON::Serializable

    # Identifier of the user
    property user_id : ::Int32

    def initialize(@user_id : ::Int32)
    end
  end
end
