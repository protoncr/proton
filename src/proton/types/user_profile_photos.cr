# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains part of the list of user photos.
  # total_count [::Int32] Total number of user profile photos.
  # photos [::Array(Proton::Types::UserProfilePhoto)] A list of photos.
  class UserProfilePhotos < Types::Base
    property total_count : ::Int32
    property photos : ::Array(Proton::Types::UserProfilePhoto)

    def initialize(@total_count : ::Int32, @photos : ::Array(Proton::Types::UserProfilePhoto))
    end
  end
end

