# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Returns contacts of the user, which are members of the supergroup or channel.
  # query [::String] Query to search for.
  class SupergroupMembersFilter::Contacts < Types::SupergroupMembersFilter
    property query : ::String

    def initialize(@query : ::String)
    end
  end
end

