# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains full information about a user profile photo.
  # id [::Int64] Unique user profile photo identifier.
  # added_date [::Int32] Point in time (Unix timestamp) when the photo has been added.
  # sizes [::Array(Proton::Types::PhotoSize)] Available variants of the user photo, in different sizes.
  class UserProfilePhoto < Types::Base
    property id : ::Int64
    property added_date : ::Int32
    property sizes : ::Array(Proton::Types::PhotoSize)

    def initialize(@id : ::Int64, @added_date : ::Int32, @sizes : ::Array(Proton::Types::PhotoSize))
    end
  end
end

