# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a user contact.
  class InlineQueryResult::Contact < Types::InlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # A user contact
    property contact : Proton::Types::Contact

    # Result thumbnail; may be null
    property thumbnail : Proton::Types::PhotoSize? = nil

    def initialize(@id : ::String, @contact : Proton::Types::Contact, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end
