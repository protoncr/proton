# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A chat was marked as unread or was read.
  # chat_id [::Int64] Chat identifier.
  # is_marked_as_unread [::Bool] New value of is_marked_as_unread.
  class Update::ChatIsMarkedAsUnread < Types::Update
    property chat_id : ::Int64
    property is_marked_as_unread : ::Bool

    def initialize(@chat_id : ::Int64, @is_marked_as_unread : ::Bool)
    end
  end
end

