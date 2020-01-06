# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A chat was marked as unread or was read.
  class Update::ChatIsMarkedAsUnread < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int64

    # New value of is_marked_as_unread
    property is_marked_as_unread : ::Bool = false

    def initialize(@chat_id : ::Int64, @is_marked_as_unread : ::Bool = false)
    end
  end
end
