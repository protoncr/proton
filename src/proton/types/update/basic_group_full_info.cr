# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Some data from basicGroupFullInfo has been changed.
  # basic_group_id [::Int32] Identifier of a basic group.
  # basic_group_full_info [Proton::Types::BasicGroupFullInfo] New full information about the group.
  class Update::BasicGroupFullInfo < Types::Update
    property basic_group_id : ::Int32
    property basic_group_full_info : Proton::Types::BasicGroupFullInfo

    def initialize(@basic_group_id : ::Int32, @basic_group_full_info : Proton::Types::BasicGroupFullInfo)
    end
  end
end

