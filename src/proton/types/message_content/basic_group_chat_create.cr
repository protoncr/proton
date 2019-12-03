# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A newly created basic group.
  class MessageContent::BasicGroupChatCreate < Types::MessageContent
    include JSON::Serializable

    # Title of the basic group
    property title : ::String

    # User identifiers of members in the basic group
    property member_user_ids : ::Array(::Int32)

    def initialize(@title : ::String, @member_user_ids : ::Array(::Int32))
    end
  end
end
