# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a document.
  # id [::String] Unique identifier of the query result.
  # document [Proton::Types::Document] Document.
  # title [::String] Document title.
  # description [::String] Document description.
  class InlineQueryResult::Document < Types::InlineQueryResult
    property id : ::String
    property document : Proton::Types::Document
    property title : ::String
    property description : ::String

    def initialize(@id : ::String, @document : Proton::Types::Document, @title : ::String, @description : ::String)
    end
  end
end

