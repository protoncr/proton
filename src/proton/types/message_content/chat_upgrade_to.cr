# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A basic group was upgraded to a supergroup and was deactivated as the result.
  class MessageContent::ChatUpgradeTo < Types::MessageContent
    include JSON::Serializable

    # Identifier of the supergroup to which the basic group was upgraded
    property supergroup_id : ::Int32

    def initialize(@supergroup_id : ::Int32)
    end
  end
end
