# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about saved card credentials.
  # id [::String] Unique identifier of the saved credentials.
  # title [::String] Title of the saved credentials.
  class SavedCredentials < Types::Base
    property id : ::String
    property title : ::String

    def initialize(@id : ::String, @title : ::String)
    end
  end
end

