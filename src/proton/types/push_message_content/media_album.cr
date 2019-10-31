# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A media album.
  # total_count [::Int32] Number of messages in the album.
  # has_photos [::Bool] True, if the album has at least one photo.
  # has_videos [::Bool] True, if the album has at least one video.
  class PushMessageContent::MediaAlbum < Types::PushMessageContent
    property total_count : ::Int32
    property has_photos : ::Bool
    property has_videos : ::Bool

    def initialize(@total_count : ::Int32, @has_photos : ::Bool, @has_videos : ::Bool)
    end
  end
end

