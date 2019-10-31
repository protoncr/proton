# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The view count of the message has changed.
  # chat_id [::Int64] Chat identifier.
  # message_id [::Int64] Message identifier.
  # views [::Int32] New value of the view count.
  class Update::MessageViews < Types::Update
    property chat_id : ::Int64
    property message_id : ::Int64
    property views : ::Int32

    def initialize(@chat_id : ::Int64, @message_id : ::Int64, @views : ::Int32)
    end
  end
end

