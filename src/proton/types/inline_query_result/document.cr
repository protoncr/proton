# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a document.
  class InlineQueryResult::Document < Types::InlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Document
    property document : Proton::Types::Document

    # Document title
    property title : ::String

    # Document description
    property description : ::String

    def initialize(@id : ::String, @document : Proton::Types::Document, @title : ::String, @description : ::String)
    end
  end
end
