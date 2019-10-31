# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a user.
  # id [::Int32] User identifier.
  # first_name [::String] First name of the user.
  # last_name [::String] Last name of the user.
  # username [::String] Username of the user.
  # phone_number [::String] Phone number of the user.
  # status [Proton::Types::UserStatus] Current online status of the user.
  # profile_photo [Proton::Types::ProfilePhoto, nil] Profile photo of the user; may be null.
  # outgoing_link [Proton::Types::LinkState] Relationship from the current user to the other user.
  # incoming_link [Proton::Types::LinkState] Relationship from the other user to the current user.
  # is_verified [::Bool] True, if the user is verified.
  # is_support [::Bool] True, if the user is Telegram support account.
  # restriction_reason [::String] If non-empty, it contains the reason why access to this user must be restricted.
  #   The format of the string is "{type}: {description}".
  #   {type} contains the type of the restriction and at least one of the suffixes "-all", "-ios", "-android", or
  #   "-wp", which describe the platforms on which access should be restricted.
  #   (For example, "terms-ios-android".
  #   {description} contains a human-readable description of the restriction, which can be shown to the user).
  # is_scam [::Bool] True, if many users reported this user as a scam.
  # have_access [::Bool] If false, the user is inaccessible, and the only information known about the user is inside
  #   this class.
  #   It can't be passed to any method except GetUser.
  # type [Proton::Types::UserType] Type of the user.
  # language_code [::String] IETF language tag of the user's language; only available to bots.
  class User < Types::Base
    property id : ::Int32
    property first_name : ::String
    property last_name : ::String
    property username : ::String
    property phone_number : ::String
    property status : Proton::Types::UserStatus
    property profile_photo : Proton::Types::ProfilePhoto?
    property outgoing_link : Proton::Types::LinkState
    property incoming_link : Proton::Types::LinkState
    property is_verified : ::Bool
    property is_support : ::Bool
    property restriction_reason : ::String
    property is_scam : ::Bool
    property have_access : ::Bool
    property type : Proton::Types::UserType
    property language_code : ::String

    def initialize(@id : ::Int32, @first_name : ::String, @last_name : ::String, @username : ::String, @phone_number : ::String, @status : Proton::Types::UserStatus, @outgoing_link : Proton::Types::LinkState, @incoming_link : Proton::Types::LinkState, @is_verified : ::Bool, @is_support : ::Bool, @restriction_reason : ::String, @is_scam : ::Bool, @have_access : ::Bool, @type : Proton::Types::UserType, @language_code : ::String, @profile_photo : Proton::Types::ProfilePhoto? = nil)
    end
  end
end

