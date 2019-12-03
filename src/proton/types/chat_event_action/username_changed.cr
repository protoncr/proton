# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The chat username was changed.
  class ChatEventAction::UsernameChanged < Types::ChatEventAction
    include JSON::Serializable

    # Previous chat username
    property old_username : ::String

    # New chat username
    property new_username : ::String

    def initialize(@old_username : ::String, @new_username : ::String)
    end
  end
end
