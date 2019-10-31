# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Returns restricted supergroup members; can be used only by administrators.
  # query [::String] Query to search for.
  class SupergroupMembersFilter::Restricted < Types::SupergroupMembersFilter
    property query : ::String

    def initialize(@query : ::String)
    end
  end
end

