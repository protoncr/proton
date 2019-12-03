# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the storage usage statistics for a specific chat.
  class StorageStatisticsByChat < Types::Base
    include JSON::Serializable

    # Chat identifier; 0 if none
    property chat_id : ::Int64

    # Total size of the files in the chat
    property size : ::Int64

    # Total number of files in the chat
    property count : ::Int32

    # Statistics split by file types
    property by_file_type : ::Array(Proton::Types::StorageStatisticsByFileType)

    def initialize(@chat_id : ::Int64, @size : ::Int64, @count : ::Int32, @by_file_type : ::Array(Proton::Types::StorageStatisticsByFileType))
    end
  end
end
