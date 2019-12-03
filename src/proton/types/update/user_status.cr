# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The user went online or offline.
  class Update::UserStatus < Types::Update
    include JSON::Serializable

    # User identifier
    property user_id : ::Int32

    # New status of the user
    property status : Proton::Types::UserStatus

    def initialize(@user_id : ::Int32, @status : Proton::Types::UserStatus)
    end
  end
end
