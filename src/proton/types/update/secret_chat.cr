# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Some data of a secret chat has changed.
  # This update is guaranteed to come before the secret chat identifier is returned to the client.
  class Update::SecretChat < Types::Update
    include JSON::Serializable

    # New data about the secret chat
    property secret_chat : Proton::Types::SecretChat

    def initialize(@secret_chat : Proton::Types::SecretChat)
    end
  end
end
