# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A chat member was deleted.
  class MessageContent::ChatDeleteMember < Types::MessageContent
    include JSON::Serializable

    # User identifier of the deleted chat member
    property user_id : ::Int32

    def initialize(@user_id : ::Int32)
    end
  end
end
