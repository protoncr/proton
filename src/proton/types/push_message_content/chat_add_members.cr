# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # New chat members were invited to a group.
  # member_name [::String] Name of the added member.
  # is_current_user [::Bool] True, if the current user was added to the group.
  # is_returned [::Bool] True, if the user has returned to the group himself.
  class PushMessageContent::ChatAddMembers < Types::PushMessageContent
    property member_name : ::String
    property is_current_user : ::Bool
    property is_returned : ::Bool

    def initialize(@member_name : ::String, @is_current_user : ::Bool, @is_returned : ::Bool)
    end
  end
end

