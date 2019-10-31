# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a chat invite link.
  # chat_id [::Int64] Chat identifier of the invite link; 0 if the user is not a member of this chat.
  # type [Proton::Types::ChatType] Contains information about the type of the chat.
  # title [::String] Title of the chat.
  # photo [Proton::Types::ChatPhoto, nil] Chat photo; may be null.
  # member_count [::Int32] Number of members.
  # member_user_ids [::Array(::Int32)] User identifiers of some chat members that may be known to the current user.
  # is_public [::Bool] True, if the chat is a public supergroup or a channel with a username.
  class ChatInviteLinkInfo < Types::Base
    property chat_id : ::Int64
    property type : Proton::Types::ChatType
    property title : ::String
    property photo : Proton::Types::ChatPhoto?
    property member_count : ::Int32
    property member_user_ids : ::Array(::Int32)
    property is_public : ::Bool

    def initialize(@chat_id : ::Int64, @type : Proton::Types::ChatType, @title : ::String, @member_count : ::Int32, @member_user_ids : ::Array(::Int32), @is_public : ::Bool, @photo : Proton::Types::ChatPhoto? = nil)
    end
  end
end

