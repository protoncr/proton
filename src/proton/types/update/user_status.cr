# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The user went online or offline.
  # user_id [::Int32] User identifier.
  # status [Proton::Types::UserStatus] New status of the user.
  class Update::UserStatus < Types::Update
    property user_id : ::Int32
    property status : Proton::Types::UserStatus

    def initialize(@user_id : ::Int32, @status : Proton::Types::UserStatus)
    end
  end
end

