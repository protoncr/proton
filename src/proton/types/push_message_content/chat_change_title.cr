# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A chat title was edited.
  class PushMessageContent::ChatChangeTitle < Types::PushMessageContent
    include JSON::Serializable

    # New chat title
    property title : ::String

    def initialize(@title : ::String)
    end
  end
end
