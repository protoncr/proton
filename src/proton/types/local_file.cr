# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a local file.
  # path [::String, nil] Local path to the locally available file part; may be empty.
  # can_be_downloaded [::Bool] True, if it is possible to try to download or generate the file.
  # can_be_deleted [::Bool] True, if the file can be deleted.
  # is_downloading_active [::Bool] True, if the file is currently being downloaded (or a local copy is being generated
  #   by some other means).
  # is_downloading_completed [::Bool] True, if the local copy is fully available.
  # download_offset [::Int32] Download will be started from this offset.
  #   downloaded_prefix_size is calculated from this offset.
  # downloaded_prefix_size [::Int32] If is_downloading_completed is false, then only some prefix of the file starting
  #   from download_offset is ready to be read.
  #   downloaded_prefix_size is the size of that prefix.
  # downloaded_size [::Int32] Total downloaded file bytes.
  #   Should be used only for calculating download progress.
  #   The actual file size may be bigger, and some parts of it may contain garbage.
  class LocalFile < Types::Base
    property path : ::String?
    property can_be_downloaded : ::Bool
    property can_be_deleted : ::Bool
    property is_downloading_active : ::Bool
    property is_downloading_completed : ::Bool
    property download_offset : ::Int32
    property downloaded_prefix_size : ::Int32
    property downloaded_size : ::Int32

    def initialize(@can_be_downloaded : ::Bool, @can_be_deleted : ::Bool, @is_downloading_active : ::Bool, @is_downloading_completed : ::Bool, @download_offset : ::Int32, @downloaded_prefix_size : ::Int32, @downloaded_size : ::Int32, @path : ::String? = nil)
    end
  end
end

