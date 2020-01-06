# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Returns information about the availability of a temporary password, which can be used for payments.
  class TemporaryPasswordState < Types::Base
    include JSON::Serializable

    # Time left before the temporary password expires, in seconds
    property valid_for : ::Int32

    # True, if a temporary password is available
    property has_password : ::Bool = false

    def initialize(@valid_for : ::Int32, @has_password : ::Bool = false)
    end
  end
end
