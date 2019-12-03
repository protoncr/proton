# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains full information about a supergroup or channel.
  class SupergroupFullInfo < Types::Base
    include JSON::Serializable

    # Supergroup or channel description
    property description : ::String

    # Number of members in the supergroup or channel; 0 if unknown
    property member_count : ::Int32

    # Number of privileged users in the supergroup or channel; 0 if unknown
    property administrator_count : ::Int32

    # Number of restricted users in the supergroup; 0 if unknown
    property restricted_count : ::Int32

    # Number of users banned from chat; 0 if unknown
    property banned_count : ::Int32

    # True, if members of the chat can be retrieved
    property can_get_members : ::Bool

    # True, if the chat can be made public
    property can_set_username : ::Bool

    # True, if the supergroup sticker set can be changed
    property can_set_sticker_set : ::Bool

    # True, if the channel statistics is available through getChatStatisticsUrl
    property can_view_statistics : ::Bool

    # True, if new chat members will have access to old messages. In public supergroups and both public and private channels, old messages are always available, so this option affects only private supergroups. The value of this field is only available for chat administrators
    property is_all_history_available : ::Bool

    # Identifier of the supergroup sticker set; 0 if none
    property sticker_set_id : ::String

    # Invite link for this chat
    property invite_link : ::String

    # Identifier of the basic group from which supergroup was upgraded; 0 if none
    property upgraded_from_basic_group_id : ::Int32

    # Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none
    property upgraded_from_max_message_id : ::Int32

    def initialize(@description : ::String, @member_count : ::Int32, @administrator_count : ::Int32, @restricted_count : ::Int32, @banned_count : ::Int32, @can_get_members : ::Bool, @can_set_username : ::Bool, @can_set_sticker_set : ::Bool, @can_view_statistics : ::Bool, @is_all_history_available : ::Bool, @sticker_set_id : ::String, @invite_link : ::String, @upgraded_from_basic_group_id : ::Int32, @upgraded_from_max_message_id : ::Int32)
    end
  end
end
