# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The call has ended with an error.
  class CallState::Error < Types::CallState
    include JSON::Serializable

    # Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout
    property error : Proton::Types::Error

    def initialize(@error : Proton::Types::Error)
    end
  end
end
