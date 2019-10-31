# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a link to an article or web page.
  # id [::String] Unique identifier of the query result.
  # url [::String] URL of the result, if it exists.
  # hide_url [::Bool] True, if the URL must be not shown.
  # title [::String] Title of the result.
  # description [::String] A short description of the result.
  # thumbnail [Proton::Types::PhotoSize, nil] Result thumbnail; may be null.
  class InlineQueryResult::Article < Types::InlineQueryResult
    property id : ::String
    property url : ::String
    property hide_url : ::Bool
    property title : ::String
    property description : ::String
    property thumbnail : Proton::Types::PhotoSize?

    def initialize(@id : ::String, @url : ::String, @hide_url : ::Bool, @title : ::String, @description : ::String, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end

