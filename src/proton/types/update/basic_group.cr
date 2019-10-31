# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Some data of a basic group has changed.
  # This update is guaranteed to come before the basic group identifier is returned to the client.
  # basic_group [Proton::Types::BasicGroup] New data about the group.
  class Update::BasicGroup < Types::Update
    property basic_group : Proton::Types::BasicGroup

    def initialize(@basic_group : Proton::Types::BasicGroup)
    end
  end
end

