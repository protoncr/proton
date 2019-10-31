# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A chat was pinned or unpinned.
  # chat_id [::Int64] Chat identifier.
  # is_pinned [::Bool] New value of is_pinned.
  # order [::Int64] New value of the chat order.
  class Update::ChatIsPinned < Types::Update
    property chat_id : ::Int64
    property is_pinned : ::Bool
    property order : ::Int64

    def initialize(@chat_id : ::Int64, @is_pinned : ::Bool, @order : ::Int64)
    end
  end
end

