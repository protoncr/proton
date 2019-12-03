# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The chat permissions was changed.
  class ChatEventAction::PermissionsChanged < Types::ChatEventAction
    include JSON::Serializable

    # Previous chat permissions
    property old_permissions : Proton::Types::ChatPermissions

    # New chat permissions
    property new_permissions : Proton::Types::ChatPermissions

    def initialize(@old_permissions : Proton::Types::ChatPermissions, @new_permissions : Proton::Types::ChatPermissions)
    end
  end
end
