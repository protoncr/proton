# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains full information about a supergroup or channel.
  # description [::String] Supergroup or channel description.
  # member_count [::Int32] Number of members in the supergroup or channel; 0 if unknown.
  # administrator_count [::Int32] Number of privileged users in the supergroup or channel; 0 if unknown.
  # restricted_count [::Int32] Number of restricted users in the supergroup; 0 if unknown.
  # banned_count [::Int32] Number of users banned from chat; 0 if unknown.
  # can_get_members [::Bool] True, if members of the chat can be retrieved.
  # can_set_username [::Bool] True, if the chat can be made public.
  # can_set_sticker_set [::Bool] True, if the supergroup sticker set can be changed.
  # can_view_statistics [::Bool] True, if the channel statistics is available through getChatStatisticsUrl.
  # is_all_history_available [::Bool] True, if new chat members will have access to old messages.
  #   In public supergroups and both public and private channels, old messages are always available, so this option
  #   affects only private supergroups.
  #   The value of this field is only available for chat administrators.
  # sticker_set_id [::Int64] Identifier of the supergroup sticker set; 0 if none.
  # invite_link [::String] Invite link for this chat.
  # upgraded_from_basic_group_id [::Int32] Identifier of the basic group from which supergroup was upgraded; 0 if none.
  # upgraded_from_max_message_id [::Int64] Identifier of the last message in the basic group from which supergroup was
  #   upgraded; 0 if none.
  class SupergroupFullInfo < Types::Base
    property description : ::String
    property member_count : ::Int32
    property administrator_count : ::Int32
    property restricted_count : ::Int32
    property banned_count : ::Int32
    property can_get_members : ::Bool
    property can_set_username : ::Bool
    property can_set_sticker_set : ::Bool
    property can_view_statistics : ::Bool
    property is_all_history_available : ::Bool
    property sticker_set_id : ::Int64
    property invite_link : ::String
    property upgraded_from_basic_group_id : ::Int32
    property upgraded_from_max_message_id : ::Int64

    def initialize(@description : ::String, @member_count : ::Int32, @administrator_count : ::Int32, @restricted_count : ::Int32, @banned_count : ::Int32, @can_get_members : ::Bool, @can_set_username : ::Bool, @can_set_sticker_set : ::Bool, @can_view_statistics : ::Bool, @is_all_history_available : ::Bool, @sticker_set_id : ::Int64, @invite_link : ::String, @upgraded_from_basic_group_id : ::Int32, @upgraded_from_max_message_id : ::Int64)
    end
  end
end

