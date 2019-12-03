# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Chat permissions was changed.
  class Update::ChatPermissions < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int64

    # The new chat permissions
    property permissions : Proton::Types::ChatPermissions

    def initialize(@chat_id : ::Int64, @permissions : Proton::Types::ChatPermissions)
    end
  end
end
