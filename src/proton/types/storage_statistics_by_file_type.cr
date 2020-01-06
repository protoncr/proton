# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the storage usage statistics for a specific file type.
  class StorageStatisticsByFileType < Types::Base
    include JSON::Serializable

    # File type
    property file_type : Proton::Types::FileType

    # Total size of the files
    property size : ::Int64

    # Total number of files
    property count : ::Int32

    def initialize(@file_type : Proton::Types::FileType, @size : ::Int64, @count : ::Int32)
    end
  end
end
