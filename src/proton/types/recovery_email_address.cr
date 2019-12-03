# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about the current recovery email address.
  class RecoveryEmailAddress < Types::Base
    include JSON::Serializable

    # Recovery email address
    property recovery_email_address : ::String

    def initialize(@recovery_email_address : ::String)
    end
  end
end
