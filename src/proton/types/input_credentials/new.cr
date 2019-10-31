# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Applies if a user enters new credentials on a payment provider website.
  # data [::String] Contains JSON-encoded data with a credential identifier from the payment provider.
  # allow_save [::Bool] True, if the credential identifier can be saved on the server side.
  class InputCredentials::New < Types::InputCredentials
    property data : ::String
    property allow_save : ::Bool

    def initialize(@data : ::String, @allow_save : ::Bool)
    end
  end
end

