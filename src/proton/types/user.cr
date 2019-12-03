# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a user.
  class User < Types::Base
    include JSON::Serializable

    # User identifier
    property id : ::Int32

    # First name of the user
    property first_name : ::String

    # Last name of the user
    property last_name : ::String

    # Username of the user
    property username : ::String

    # Phone number of the user
    property phone_number : ::String

    # Current online status of the user
    property status : Proton::Types::UserStatus

    # Relationship from the current user to the other user
    property outgoing_link : Proton::Types::LinkState

    # Relationship from the other user to the current user
    property incoming_link : Proton::Types::LinkState

    # True, if the user is verified
    property is_verified : ::Bool

    # True, if the user is Telegram support account
    property is_support : ::Bool

    # If non-empty, it contains the reason why access to this user must be restricted. The format of the string is "{type}: {description}". {type} contains the type of the restriction and at least one of the suffixes "-all", "-ios", "-android", or "-wp", which describe the platforms on which access should be restricted. (For example, "terms-ios-android". {description} contains a human-readable description of the restriction, which can be shown to the user)
    property restriction_reason : ::String

    # True, if many users reported this user as a scam
    property is_scam : ::Bool

    # If false, the user is inaccessible, and the only information known about the user is inside this class. It can't be passed to any method except GetUser
    property have_access : ::Bool

    # Type of the user
    property type : Proton::Types::UserType

    # IETF language tag of the user's language; only available to bots
    property language_code : ::String

    # Profile photo of the user; may be null
    property profile_photo : Proton::Types::ProfilePhoto? = nil

    def initialize(@id : ::Int32, @first_name : ::String, @last_name : ::String, @username : ::String, @phone_number : ::String, @status : Proton::Types::UserStatus, @outgoing_link : Proton::Types::LinkState, @incoming_link : Proton::Types::LinkState, @is_verified : ::Bool, @is_support : ::Bool, @restriction_reason : ::String, @is_scam : ::Bool, @have_access : ::Bool, @type : Proton::Types::UserType, @language_code : ::String, @profile_photo : Proton::Types::ProfilePhoto? = nil)
    end
  end
end
