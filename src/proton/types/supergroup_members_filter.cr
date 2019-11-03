# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Specifies the kind of chat members to return in getSupergroupMembers.
  class SupergroupMembersFilter < Types::Base

    def initialize()
    end
  end
end

require "./supergroup_members_filter/recent"
require "./supergroup_members_filter/contacts"
require "./supergroup_members_filter/administrators"
require "./supergroup_members_filter/search"
require "./supergroup_members_filter/restricted"
require "./supergroup_members_filter/banned"
require "./supergroup_members_filter/bots"