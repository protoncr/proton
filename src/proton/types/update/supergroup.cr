# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Some data of a supergroup or a channel has changed.
  # This update is guaranteed to come before the supergroup identifier is returned to the client.
  class Update::Supergroup < Types::Update
    include JSON::Serializable

    # New data about the supergroup
    property supergroup : Proton::Types::Supergroup

    def initialize(@supergroup : Proton::Types::Supergroup)
    end
  end
end
