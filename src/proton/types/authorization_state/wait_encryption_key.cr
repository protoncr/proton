# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # TDLib needs an encryption key to decrypt the local database.
  class AuthorizationState::WaitEncryptionKey < Types::AuthorizationState
    include JSON::Serializable

    # True, if the database is currently encrypted
    property is_encrypted : ::Bool = false

    def initialize(@is_encrypted : ::Bool = false)
    end
  end
end
