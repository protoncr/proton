# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # New chat members were added.
  # member_user_ids [::Array(::Int32)] User identifiers of the new members.
  class MessageContent::ChatAddMembers < Types::MessageContent
    property member_user_ids : ::Array(::Int32)

    def initialize(@member_user_ids : ::Array(::Int32))
    end
  end
end

