# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Some messages were deleted.
  class Update::DeleteMessages < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int32

    # Identifiers of the deleted messages
    property message_ids : ::Array(::Int32)

    # True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible)
    property is_permanent : ::Bool

    # True, if the messages are deleted only from the cache and can possibly be retrieved again in the future
    property from_cache : ::Bool

    def initialize(@chat_id : ::Int32, @message_ids : ::Array(::Int32), @is_permanent : ::Bool, @from_cache : ::Bool)
    end
  end
end
