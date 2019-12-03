# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The chat title was changed.
  class ChatEventAction::TitleChanged < Types::ChatEventAction
    include JSON::Serializable

    # Previous chat title
    property old_title : ::String

    # New chat title
    property new_title : ::String

    def initialize(@old_title : ::String, @new_title : ::String)
    end
  end
end
