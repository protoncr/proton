# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A chat was pinned or unpinned.
  class Update::ChatIsPinned < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int64

    # New value of the chat order
    property order : ::String

    # New value of is_pinned
    property is_pinned : ::Bool = false

    def initialize(@chat_id : ::Int64, @order : ::String, @is_pinned : ::Bool = false)
    end
  end
end
