# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The title of a chat was changed.
  class Update::ChatTitle < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int32

    # The new chat title
    property title : ::String

    def initialize(@chat_id : ::Int32, @title : ::String)
    end
  end
end
