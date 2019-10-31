# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains auto-download settings.
  # is_auto_download_enabled [::Bool] True, if the auto-download is enabled.
  # max_photo_file_size [::Int32] Maximum size of a photo file to be auto-downloaded.
  # max_video_file_size [::Int32] Maximum size of a video file to be auto-downloaded.
  # max_other_file_size [::Int32] Maximum size of other file types to be auto-downloaded.
  # preload_large_videos [::Bool] True, if the beginning of videos needs to be preloaded for instant playback.
  # preload_next_audio [::Bool] True, if the next audio track needs to be preloaded while the user is listening to an
  #   audio file.
  # use_less_data_for_calls [::Bool] True, if "use less data for calls" option needs to be enabled.
  class AutoDownloadSettings < Types::Base
    property is_auto_download_enabled : ::Bool
    property max_photo_file_size : ::Int32
    property max_video_file_size : ::Int32
    property max_other_file_size : ::Int32
    property preload_large_videos : ::Bool
    property preload_next_audio : ::Bool
    property use_less_data_for_calls : ::Bool

    def initialize(@is_auto_download_enabled : ::Bool, @max_photo_file_size : ::Int32, @max_video_file_size : ::Int32, @max_other_file_size : ::Int32, @preload_large_videos : ::Bool, @preload_next_audio : ::Bool, @use_less_data_for_calls : ::Bool)
    end
  end
end

