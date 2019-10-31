# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The chat description was changed.
  # old_description [::String] Previous chat description.
  # new_description [::String] New chat description.
  class ChatEventAction::DescriptionChanged < Types::ChatEventAction
    property old_description : ::String
    property new_description : ::String

    def initialize(@old_description : ::String, @new_description : ::String)
    end
  end
end

