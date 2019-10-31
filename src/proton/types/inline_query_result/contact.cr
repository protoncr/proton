# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a user contact.
  # id [::String] Unique identifier of the query result.
  # contact [Proton::Types::Contact] A user contact.
  # thumbnail [Proton::Types::PhotoSize, nil] Result thumbnail; may be null.
  class InlineQueryResult::Contact < Types::InlineQueryResult
    property id : ::String
    property contact : Proton::Types::Contact
    property thumbnail : Proton::Types::PhotoSize?

    def initialize(@id : ::String, @contact : Proton::Types::Contact, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end

