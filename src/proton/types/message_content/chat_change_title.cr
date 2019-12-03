# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An updated chat title.
  class MessageContent::ChatChangeTitle < Types::MessageContent
    include JSON::Serializable

    # New chat title
    property title : ::String

    def initialize(@title : ::String)
    end
  end
end
