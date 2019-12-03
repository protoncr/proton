# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about the period of inactivity after which the current user's account will automatically be
  #   deleted.
  class AccountTtl < Types::Base
    include JSON::Serializable

    # Number of days of inactivity before the account will be flagged for deletion; should range from 30-366 days
    property days : ::Int32

    def initialize(@days : ::Int32)
    end
  end
end
