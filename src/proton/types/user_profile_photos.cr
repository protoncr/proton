# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains part of the list of user photos.
  class UserProfilePhotos < Types::Base
    include JSON::Serializable

    # Total number of user profile photos
    property total_count : ::Int32

    # A list of photos
    property photos : ::Array(Proton::Types::UserProfilePhoto)

    def initialize(@total_count : ::Int32, @photos : ::Array(Proton::Types::UserProfilePhoto))
    end
  end
end
