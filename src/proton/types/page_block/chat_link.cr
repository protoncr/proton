# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A link to a chat.
  class PageBlock::ChatLink < Types::PageBlock
    include JSON::Serializable

    # Chat title
    property title : ::String

    # Chat username, by which all other information about the chat should be resolved
    property username : ::String

    # Chat photo; may be null
    property photo : Proton::Types::ChatPhoto? = nil

    def initialize(@title : ::String, @username : ::String, @photo : Proton::Types::ChatPhoto? = nil)
    end
  end
end
