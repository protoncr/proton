# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a user profile photo.
  class ProfilePhoto < Types::Base
    include JSON::Serializable

    # Photo identifier; 0 for an empty photo. Can be used to find a photo in a list of userProfilePhotos
    property id : ::String

    # A small (160x160) user profile photo. The file can be downloaded only before the photo is changed
    property small : Proton::Types::File

    # A big (640x640) user profile photo. The file can be downloaded only before the photo is changed
    property big : Proton::Types::File

    def initialize(@id : ::String, @small : Proton::Types::File, @big : Proton::Types::File)
    end
  end
end
