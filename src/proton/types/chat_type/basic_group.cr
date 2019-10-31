# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A basic group (i.e., a chat with 0-200 other users).
  # basic_group_id [::Int32] Basic group identifier.
  class ChatType::BasicGroup < Types::ChatType
    property basic_group_id : ::Int32

    def initialize(@basic_group_id : ::Int32)
    end
  end
end

