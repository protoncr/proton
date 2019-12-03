# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A chat member was deleted.
  class PushMessageContent::ChatDeleteMember < Types::PushMessageContent
    include JSON::Serializable

    # Name of the deleted member
    property member_name : ::String

    # True, if the current user was deleted from the group
    property is_current_user : ::Bool

    # True, if the user has left the group himself
    property is_left : ::Bool

    def initialize(@member_name : ::String, @is_current_user : ::Bool, @is_left : ::Bool)
    end
  end
end
