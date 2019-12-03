# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a chat invite link.
  class ChatInviteLinkInfo < Types::Base
    include JSON::Serializable

    # Chat identifier of the invite link; 0 if the user is not a member of this chat
    property chat_id : ::Int32

    # Contains information about the type of the chat
    property type : Proton::Types::ChatType

    # Title of the chat
    property title : ::String

    # Number of members
    property member_count : ::Int32

    # User identifiers of some chat members that may be known to the current user
    property member_user_ids : ::Array(::Int32)

    # True, if the chat is a public supergroup or a channel with a username
    property is_public : ::Bool

    # Chat photo; may be null
    property photo : Proton::Types::ChatPhoto? = nil

    def initialize(@chat_id : ::Int32, @type : Proton::Types::ChatType, @title : ::String, @member_count : ::Int32, @member_user_ids : ::Array(::Int32), @is_public : ::Bool, @photo : Proton::Types::ChatPhoto? = nil)
    end
  end
end
