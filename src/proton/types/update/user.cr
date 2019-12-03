# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Some data of a user has changed.
  # This update is guaranteed to come before the user identifier is returned to the client.
  class Update::User < Types::Update
    include JSON::Serializable

    # New data about the user
    property user : Proton::Types::User

    def initialize(@user : Proton::Types::User)
    end
  end
end
