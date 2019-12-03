# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Returns users banned from the supergroup or channel; can be used only by administrators.
  class SupergroupMembersFilter::Banned < Types::SupergroupMembersFilter
    include JSON::Serializable

    # Query to search for
    property query : ::String

    def initialize(@query : ::String)
    end
  end
end
