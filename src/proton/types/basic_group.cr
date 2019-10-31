# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a basic group of 0-200 users (must be upgraded to a supergroup to accommodate more than 200 users).
  # id [::Int32] Group identifier.
  # member_count [::Int32] Number of members in the group.
  # status [Proton::Types::ChatMemberStatus] Status of the current user in the group.
  # is_active [::Bool] True, if the group is active.
  # upgraded_to_supergroup_id [::Int32] Identifier of the supergroup to which this group was upgraded; 0 if none.
  class BasicGroup < Types::Base
    property id : ::Int32
    property member_count : ::Int32
    property status : Proton::Types::ChatMemberStatus
    property is_active : ::Bool
    property upgraded_to_supergroup_id : ::Int32

    def initialize(@id : ::Int32, @member_count : ::Int32, @status : Proton::Types::ChatMemberStatus, @is_active : ::Bool, @upgraded_to_supergroup_id : ::Int32)
    end
  end
end

