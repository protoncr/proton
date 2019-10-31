# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A link to a chat.
  # title [::String] Chat title.
  # photo [Proton::Types::ChatPhoto, nil] Chat photo; may be null.
  # username [::String] Chat username, by which all other information about the chat should be resolved.
  class PageBlock::ChatLink < Types::PageBlock
    property title : ::String
    property photo : Proton::Types::ChatPhoto?
    property username : ::String

    def initialize(@title : ::String, @username : ::String, @photo : Proton::Types::ChatPhoto? = nil)
    end
  end
end

