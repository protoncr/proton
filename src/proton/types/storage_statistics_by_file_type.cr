# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the storage usage statistics for a specific file type.
  # file_type [Proton::Types::FileType] File type.
  # size [::Int64] Total size of the files.
  # count [::Int32] Total number of files.
  class StorageStatisticsByFileType < Types::Base
    property file_type : Proton::Types::FileType
    property size : ::Int64
    property count : ::Int32

    def initialize(@file_type : Proton::Types::FileType, @size : ::Int64, @count : ::Int32)
    end
  end
end

