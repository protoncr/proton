# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Some data from userFullInfo has been changed.
  # user_id [::Int32] User identifier.
  # user_full_info [Proton::Types::UserFullInfo] New full information about the user.
  class Update::UserFullInfo < Types::Update
    property user_id : ::Int32
    property user_full_info : Proton::Types::UserFullInfo

    def initialize(@user_id : ::Int32, @user_full_info : Proton::Types::UserFullInfo)
    end
  end
end

