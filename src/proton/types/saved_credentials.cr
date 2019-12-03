# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about saved card credentials.
  class SavedCredentials < Types::Base
    include JSON::Serializable

    # Unique identifier of the saved credentials
    property id : ::String

    # Title of the saved credentials
    property title : ::String

    def initialize(@id : ::String, @title : ::String)
    end
  end
end
