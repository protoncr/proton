# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The chat permissions was changed.
  # old_permissions [Proton::Types::ChatPermissions] Previous chat permissions.
  # new_permissions [Proton::Types::ChatPermissions] New chat permissions.
  class ChatEventAction::PermissionsChanged < Types::ChatEventAction
    property old_permissions : Proton::Types::ChatPermissions
    property new_permissions : Proton::Types::ChatPermissions

    def initialize(@old_permissions : Proton::Types::ChatPermissions, @new_permissions : Proton::Types::ChatPermissions)
    end
  end
end

