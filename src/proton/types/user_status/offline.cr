# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The user is offline.
  # was_online [::Int32] Point in time (Unix timestamp) when the user was last online.
  class UserStatus::Offline < Types::UserStatus
    property was_online : ::Int32

    def initialize(@was_online : ::Int32)
    end
  end
end

