# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Some data from supergroupFullInfo has been changed.
  # supergroup_id [::Int32] Identifier of the supergroup or channel.
  # supergroup_full_info [Proton::Types::SupergroupFullInfo] New full information about the supergroup.
  class Update::SupergroupFullInfo < Types::Update
    property supergroup_id : ::Int32
    property supergroup_full_info : Proton::Types::SupergroupFullInfo

    def initialize(@supergroup_id : ::Int32, @supergroup_full_info : Proton::Types::SupergroupFullInfo)
    end
  end
end

