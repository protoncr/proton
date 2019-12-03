# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a supergroup or channel with zero or more members (subscribers in the case of channels).
  # From the point of view of the system, a channel is a special kind of a supergroup: only administrators can post and
  #   see the list of members, and posts from all administrators use the name and photo of the channel instead of individual
  #   names and profile photos.
  # Unlike supergroups, channels can have an unlimited number of subscribers.
  class Supergroup < Types::Base
    include JSON::Serializable

    # Supergroup or channel identifier
    property id : ::Int32

    # Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member
    property date : ::Int32

    # Status of the current user in the supergroup or channel
    property status : Proton::Types::ChatMemberStatus

    # Member count; 0 if unknown. Currently it is guaranteed to be known only if the supergroup or channel was found through SearchPublicChats
    property member_count : ::Int32

    # True, if messages sent to the channel should contain information about the sender. This field is only applicable to channels
    property sign_messages : ::Bool

    # True, if the supergroup is a channel
    property is_channel : ::Bool

    # True, if the supergroup or channel is verified
    property is_verified : ::Bool

    # If non-empty, contains the reason why access to this supergroup or channel must be restricted. Format of the string is "{type}: {description}". {type} Contains the type of the restriction and at least one of the suffixes "-all", "-ios", "-android", or "-wp", which describe the platforms on which access should be restricted. (For example, "terms-ios-android". {description} contains a human-readable description of the restriction, which can be shown to the user)
    property restriction_reason : ::String

    # True, if many users reported this supergroup as a scam
    property is_scam : ::Bool

    # Username of the supergroup or channel; empty for private supergroups or channels
    property username : ::String? = nil

    def initialize(@id : ::Int32, @date : ::Int32, @status : Proton::Types::ChatMemberStatus, @member_count : ::Int32, @sign_messages : ::Bool, @is_channel : ::Bool, @is_verified : ::Bool, @restriction_reason : ::String, @is_scam : ::Bool, @username : ::String? = nil)
    end
  end
end
