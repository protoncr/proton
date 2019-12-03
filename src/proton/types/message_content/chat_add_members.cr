# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # New chat members were added.
  class MessageContent::ChatAddMembers < Types::MessageContent
    include JSON::Serializable

    # User identifiers of the new members
    property member_user_ids : ::Array(::Int32)

    def initialize(@member_user_ids : ::Array(::Int32))
    end
  end
end
