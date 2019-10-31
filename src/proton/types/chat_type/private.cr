# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An ordinary chat with a user.
  # user_id [::Int32] User identifier.
  class ChatType::Private < Types::ChatType
    property user_id : ::Int32

    def initialize(@user_id : ::Int32)
    end
  end
end

