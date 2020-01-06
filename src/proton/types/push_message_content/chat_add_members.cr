# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # New chat members were invited to a group.
  class PushMessageContent::ChatAddMembers < Types::PushMessageContent
    include JSON::Serializable

    # Name of the added member
    property member_name : ::String

    # True, if the current user was added to the group
    property is_current_user : ::Bool = false

    # True, if the user has returned to the group himself
    property is_returned : ::Bool = false

    def initialize(@member_name : ::String, @is_current_user : ::Bool = false, @is_returned : ::Bool = false)
    end
  end
end
