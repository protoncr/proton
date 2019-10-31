# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A chat member was deleted.
  # member_name [::String] Name of the deleted member.
  # is_current_user [::Bool] True, if the current user was deleted from the group.
  # is_left [::Bool] True, if the user has left the group himself.
  class PushMessageContent::ChatDeleteMember < Types::PushMessageContent
    property member_name : ::String
    property is_current_user : ::Bool
    property is_left : ::Bool

    def initialize(@member_name : ::String, @is_current_user : ::Bool, @is_left : ::Bool)
    end
  end
end

