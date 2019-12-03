# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Applies if a user enters new credentials using Android Pay.
  class InputCredentials::AndroidPay < Types::InputCredentials
    include JSON::Serializable

    # JSON-encoded data with the credential identifier
    property data : ::String

    def initialize(@data : ::String)
    end
  end
end
