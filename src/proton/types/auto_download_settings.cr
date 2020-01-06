# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains auto-download settings.
  class AutoDownloadSettings < Types::Base
    include JSON::Serializable

    # Maximum size of a photo file to be auto-downloaded
    property max_photo_file_size : ::Int32

    # Maximum size of a video file to be auto-downloaded
    property max_video_file_size : ::Int32

    # Maximum size of other file types to be auto-downloaded
    property max_other_file_size : ::Int32

    # True, if the auto-download is enabled
    property is_auto_download_enabled : ::Bool = false

    # True, if the beginning of videos needs to be preloaded for instant playback
    property preload_large_videos : ::Bool = false

    # True, if the next audio track needs to be preloaded while the user is listening to an audio file
    property preload_next_audio : ::Bool = false

    # True, if "use less data for calls" option needs to be enabled
    property use_less_data_for_calls : ::Bool = false

    def initialize(@max_photo_file_size : ::Int32, @max_video_file_size : ::Int32, @max_other_file_size : ::Int32, @is_auto_download_enabled : ::Bool = false, @preload_large_videos : ::Bool = false, @preload_next_audio : ::Bool = false, @use_less_data_for_calls : ::Bool = false)
    end
  end
end
