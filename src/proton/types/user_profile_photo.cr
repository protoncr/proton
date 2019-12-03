# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains full information about a user profile photo.
  class UserProfilePhoto < Types::Base
    include JSON::Serializable

    # Unique user profile photo identifier
    property id : ::String

    # Point in time (Unix timestamp) when the photo has been added
    property added_date : ::Int32

    # Available variants of the user photo, in different sizes
    property sizes : ::Array(Proton::Types::PhotoSize)

    def initialize(@id : ::String, @added_date : ::Int32, @sizes : ::Array(Proton::Types::PhotoSize))
    end
  end
end
