# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The user is online.
  # expires [::Int32] Point in time (Unix timestamp) when the user's online status will expire.
  class UserStatus::Online < Types::UserStatus
    property expires : ::Int32

    def initialize(@expires : ::Int32)
    end
  end
end

