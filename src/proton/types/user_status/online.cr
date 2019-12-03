# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The user is online.
  class UserStatus::Online < Types::UserStatus
    include JSON::Serializable

    # Point in time (Unix timestamp) when the user's online status will expire
    property expires : ::Int32

    def initialize(@expires : ::Int32)
    end
  end
end
