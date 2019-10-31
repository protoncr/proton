# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The chat title was changed.
  # old_title [::String] Previous chat title.
  # new_title [::String] New chat title.
  class ChatEventAction::TitleChanged < Types::ChatEventAction
    property old_title : ::String
    property new_title : ::String

    def initialize(@old_title : ::String, @new_title : ::String)
    end
  end
end

