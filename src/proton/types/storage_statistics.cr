# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the exact storage usage statistics split by chats and file type.
  class StorageStatistics < Types::Base
    include JSON::Serializable

    # Total size of files
    property size : ::Int32

    # Total number of files
    property count : ::Int32

    # Statistics split by chats
    property by_chat : ::Array(Proton::Types::StorageStatisticsByChat)

    def initialize(@size : ::Int32, @count : ::Int32, @by_chat : ::Array(Proton::Types::StorageStatisticsByChat))
    end
  end
end
