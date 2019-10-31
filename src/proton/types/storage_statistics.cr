# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the exact storage usage statistics split by chats and file type.
  # size [::Int64] Total size of files.
  # count [::Int32] Total number of files.
  # by_chat [::Array(Proton::Types::StorageStatisticsByChat)] Statistics split by chats.
  class StorageStatistics < Types::Base
    property size : ::Int64
    property count : ::Int32
    property by_chat : ::Array(Proton::Types::StorageStatisticsByChat)

    def initialize(@size : ::Int64, @count : ::Int32, @by_chat : ::Array(Proton::Types::StorageStatisticsByChat))
    end
  end
end

