# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Some data from basicGroupFullInfo has been changed.
  class Update::BasicGroupFullInfo < Types::Update
    include JSON::Serializable

    # Identifier of a basic group
    property basic_group_id : ::Int32

    # New full information about the group
    property basic_group_full_info : Proton::Types::BasicGroupFullInfo

    def initialize(@basic_group_id : ::Int32, @basic_group_full_info : Proton::Types::BasicGroupFullInfo)
    end
  end
end
