# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a basic group of 0-200 users (must be upgraded to a supergroup to accommodate more than 200 users).
  class BasicGroup < Types::Base
    include JSON::Serializable

    # Group identifier
    property id : ::Int32

    # Number of members in the group
    property member_count : ::Int32

    # Status of the current user in the group
    property status : Proton::Types::ChatMemberStatus

    # Identifier of the supergroup to which this group was upgraded; 0 if none
    property upgraded_to_supergroup_id : ::Int32

    # True, if the group is active
    property is_active : ::Bool = false

    def initialize(@id : ::Int32, @member_count : ::Int32, @status : Proton::Types::ChatMemberStatus, @upgraded_to_supergroup_id : ::Int32, @is_active : ::Bool = false)
    end
  end
end
