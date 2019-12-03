# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Some data of a basic group has changed.
  # This update is guaranteed to come before the basic group identifier is returned to the client.
  class Update::BasicGroup < Types::Update
    include JSON::Serializable

    # New data about the group
    property basic_group : Proton::Types::BasicGroup

    def initialize(@basic_group : Proton::Types::BasicGroup)
    end
  end
end
