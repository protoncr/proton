# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Chat permissions was changed.
  # chat_id [::Int64] Chat identifier.
  # permissions [Proton::Types::ChatPermissions] The new chat permissions.
  class Update::ChatPermissions < Types::Update
    property chat_id : ::Int64
    property permissions : Proton::Types::ChatPermissions

    def initialize(@chat_id : ::Int64, @permissions : Proton::Types::ChatPermissions)
    end
  end
end

