# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The chat username was changed.
  # old_username [::String] Previous chat username.
  # new_username [::String] New chat username.
  class ChatEventAction::UsernameChanged < Types::ChatEventAction
    property old_username : ::String
    property new_username : ::String

    def initialize(@old_username : ::String, @new_username : ::String)
    end
  end
end

