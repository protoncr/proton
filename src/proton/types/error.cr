# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # An object of this type can be returned on every function call, in case of an error.
  class Error < Types::Base
    include JSON::Serializable

    # Error code; subject to future changes. If the error code is 406, the error message must not be processed in any way and must not be displayed to the user
    property code : ::Int32

    # Error message; subject to future changes
    property message : ::String

    def initialize(@code : ::Int32, @message : ::String)
    end
  end
end
