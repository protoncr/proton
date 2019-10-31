# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a list of users.
  # total_count [::Int32] Approximate total count of users found.
  # user_ids [::Array(::Int32)] A list of user identifiers.
  class Users < Types::Base
    property total_count : ::Int32
    property user_ids : ::Array(::Int32)

    def initialize(@total_count : ::Int32, @user_ids : ::Array(::Int32))
    end
  end
end

