# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Specifies the kind of chat members to return in getSupergroupMembers.
  abstract class SupergroupMembersFilter < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "supergroupMembersFilterRecent" => Types::SupergroupMembersFilter::Recent,
      "supergroupMembersFilterContacts" => Types::SupergroupMembersFilter::Contacts,
      "supergroupMembersFilterAdministrators" => Types::SupergroupMembersFilter::Administrators,
      "supergroupMembersFilterSearch" => Types::SupergroupMembersFilter::Search,
      "supergroupMembersFilterRestricted" => Types::SupergroupMembersFilter::Restricted,
      "supergroupMembersFilterBanned" => Types::SupergroupMembersFilter::Banned,
      "supergroupMembersFilterBots" => Types::SupergroupMembersFilter::Bots
    })
  end
end

require "./supergroup_members_filter/recent"
require "./supergroup_members_filter/contacts"
require "./supergroup_members_filter/administrators"
require "./supergroup_members_filter/search"
require "./supergroup_members_filter/restricted"
require "./supergroup_members_filter/banned"
require "./supergroup_members_filter/bots"
