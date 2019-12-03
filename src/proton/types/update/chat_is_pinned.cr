# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A chat was pinned or unpinned.
  class Update::ChatIsPinned < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int32

    # New value of is_pinned
    property is_pinned : ::Bool

    # New value of the chat order
    property order : ::String

    def initialize(@chat_id : ::Int32, @is_pinned : ::Bool, @order : ::String)
    end
  end
end
