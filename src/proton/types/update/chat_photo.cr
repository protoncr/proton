# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A chat photo was changed.
  # chat_id [::Int64] Chat identifier.
  # photo [Proton::Types::ChatPhoto, nil] The new chat photo; may be null.
  class Update::ChatPhoto < Types::Update
    property chat_id : ::Int64
    property photo : Proton::Types::ChatPhoto?

    def initialize(@chat_id : ::Int64, @photo : Proton::Types::ChatPhoto? = nil)
    end
  end
end

