# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The chat description was changed.
  class ChatEventAction::DescriptionChanged < Types::ChatEventAction
    include JSON::Serializable

    # Previous chat description
    property old_description : ::String

    # New chat description
    property new_description : ::String

    def initialize(@old_description : ::String, @new_description : ::String)
    end
  end
end
