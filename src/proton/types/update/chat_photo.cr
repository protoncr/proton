# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A chat photo was changed.
  class Update::ChatPhoto < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int64

    # The new chat photo; may be null
    property photo : Proton::Types::ChatPhoto? = nil

    def initialize(@chat_id : ::Int64, @photo : Proton::Types::ChatPhoto? = nil)
    end
  end
end
