# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Some data from supergroupFullInfo has been changed.
  class Update::SupergroupFullInfo < Types::Update
    include JSON::Serializable

    # Identifier of the supergroup or channel
    property supergroup_id : ::Int32

    # New full information about the supergroup
    property supergroup_full_info : Proton::Types::SupergroupFullInfo

    def initialize(@supergroup_id : ::Int32, @supergroup_full_info : Proton::Types::SupergroupFullInfo)
    end
  end
end
