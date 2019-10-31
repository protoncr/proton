# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A chat's is_sponsored field has changed.
  # chat_id [::Int64] Chat identifier.
  # is_sponsored [::Bool] New value of is_sponsored.
  # order [::Int64] New value of chat order.
  class Update::ChatIsSponsored < Types::Update
    property chat_id : ::Int64
    property is_sponsored : ::Bool
    property order : ::Int64

    def initialize(@chat_id : ::Int64, @is_sponsored : ::Bool, @order : ::Int64)
    end
  end
end

