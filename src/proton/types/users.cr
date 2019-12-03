# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a list of users.
  class Users < Types::Base
    include JSON::Serializable

    # Approximate total count of users found
    property total_count : ::Int32

    # A list of user identifiers
    property user_ids : ::Array(::Int32)

    def initialize(@total_count : ::Int32, @user_ids : ::Array(::Int32))
    end
  end
end
