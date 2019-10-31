# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The title of a chat was changed.
  # chat_id [::Int64] Chat identifier.
  # title [::String] The new chat title.
  class Update::ChatTitle < Types::Update
    property chat_id : ::Int64
    property title : ::String

    def initialize(@chat_id : ::Int64, @title : ::String)
    end
  end
end

