# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a set of filters used to obtain a chat event log.
  # message_edits [::Bool] True, if message edits should be returned.
  # message_deletions [::Bool] True, if message deletions should be returned.
  # message_pins [::Bool] True, if pin/unpin events should be returned.
  # member_joins [::Bool] True, if members joining events should be returned.
  # member_leaves [::Bool] True, if members leaving events should be returned.
  # member_invites [::Bool] True, if invited member events should be returned.
  # member_promotions [::Bool] True, if member promotion/demotion events should be returned.
  # member_restrictions [::Bool] True, if member restricted/unrestricted/banned/unbanned events should be returned.
  # info_changes [::Bool] True, if changes in chat information should be returned.
  # setting_changes [::Bool] True, if changes in chat settings should be returned.
  class ChatEventLogFilters < Types::Base
    property message_edits : ::Bool
    property message_deletions : ::Bool
    property message_pins : ::Bool
    property member_joins : ::Bool
    property member_leaves : ::Bool
    property member_invites : ::Bool
    property member_promotions : ::Bool
    property member_restrictions : ::Bool
    property info_changes : ::Bool
    property setting_changes : ::Bool

    def initialize(@message_edits : ::Bool, @message_deletions : ::Bool, @message_pins : ::Bool, @member_joins : ::Bool, @member_leaves : ::Bool, @member_invites : ::Bool, @member_promotions : ::Bool, @member_restrictions : ::Bool, @info_changes : ::Bool, @setting_changes : ::Bool)
    end
  end
end

