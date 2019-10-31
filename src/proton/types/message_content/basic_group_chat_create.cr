# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A newly created basic group.
  # title [::String] Title of the basic group.
  # member_user_ids [::Array(::Int32)] User identifiers of members in the basic group.
  class MessageContent::BasicGroupChatCreate < Types::MessageContent
    property title : ::String
    property member_user_ids : ::Array(::Int32)

    def initialize(@title : ::String, @member_user_ids : ::Array(::Int32))
    end
  end
end

