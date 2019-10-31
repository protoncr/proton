# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A supergroup has been created from a basic group.
  # title [::String] Title of the newly created supergroup.
  # basic_group_id [::Int32] The identifier of the original basic group.
  class MessageContent::ChatUpgradeFrom < Types::MessageContent
    property title : ::String
    property basic_group_id : ::Int32

    def initialize(@title : ::String, @basic_group_id : ::Int32)
    end
  end
end

