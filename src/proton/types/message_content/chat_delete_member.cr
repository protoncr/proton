# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A chat member was deleted.
  # user_id [::Int32] User identifier of the deleted chat member.
  class MessageContent::ChatDeleteMember < Types::MessageContent
    property user_id : ::Int32

    def initialize(@user_id : ::Int32)
    end
  end
end

