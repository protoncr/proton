# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the storage usage statistics for a specific chat.
  # chat_id [::Int64] Chat identifier; 0 if none.
  # size [::Int64] Total size of the files in the chat.
  # count [::Int32] Total number of files in the chat.
  # by_file_type [::Array(Proton::Types::StorageStatisticsByFileType)] Statistics split by file types.
  class StorageStatisticsByChat < Types::Base
    property chat_id : ::Int64
    property size : ::Int64
    property count : ::Int32
    property by_file_type : ::Array(Proton::Types::StorageStatisticsByFileType)

    def initialize(@chat_id : ::Int64, @size : ::Int64, @count : ::Int32, @by_file_type : ::Array(Proton::Types::StorageStatisticsByFileType))
    end
  end
end

