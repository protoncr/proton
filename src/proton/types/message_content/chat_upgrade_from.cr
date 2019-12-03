# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A supergroup has been created from a basic group.
  class MessageContent::ChatUpgradeFrom < Types::MessageContent
    include JSON::Serializable

    # Title of the newly created supergroup
    property title : ::String

    # The identifier of the original basic group
    property basic_group_id : ::Int32

    def initialize(@title : ::String, @basic_group_id : ::Int32)
    end
  end
end
