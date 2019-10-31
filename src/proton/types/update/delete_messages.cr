# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Some messages were deleted.
  # chat_id [::Int64] Chat identifier.
  # message_ids [::Array(::Int64)] Identifiers of the deleted messages.
  # is_permanent [::Bool] True, if the messages are permanently deleted by a user (as opposed to just becoming
  #   inaccessible).
  # from_cache [::Bool] True, if the messages are deleted only from the cache and can possibly be retrieved again in
  #   the future.
  class Update::DeleteMessages < Types::Update
    property chat_id : ::Int64
    property message_ids : ::Array(::Int64)
    property is_permanent : ::Bool
    property from_cache : ::Bool

    def initialize(@chat_id : ::Int64, @message_ids : ::Array(::Int64), @is_permanent : ::Bool, @from_cache : ::Bool)
    end
  end
end

