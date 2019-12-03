# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An ordinary chat with a user.
  class ChatType::Private < Types::ChatType
    include JSON::Serializable

    # User identifier
    property user_id : ::Int32

    def initialize(@user_id : ::Int32)
    end
  end
end
