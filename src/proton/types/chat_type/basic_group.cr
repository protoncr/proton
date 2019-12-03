# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A basic group (i.e., a chat with 0-200 other users).
  class ChatType::BasicGroup < Types::ChatType
    include JSON::Serializable

    # Basic group identifier
    property basic_group_id : ::Int32

    def initialize(@basic_group_id : ::Int32)
    end
  end
end
