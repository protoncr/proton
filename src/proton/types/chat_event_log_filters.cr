# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a set of filters used to obtain a chat event log.
  class ChatEventLogFilters < Types::Base
    include JSON::Serializable

    # True, if message edits should be returned
    property message_edits : ::Bool = false

    # True, if message deletions should be returned
    property message_deletions : ::Bool = false

    # True, if pin/unpin events should be returned
    property message_pins : ::Bool = false

    # True, if members joining events should be returned
    property member_joins : ::Bool = false

    # True, if members leaving events should be returned
    property member_leaves : ::Bool = false

    # True, if invited member events should be returned
    property member_invites : ::Bool = false

    # True, if member promotion/demotion events should be returned
    property member_promotions : ::Bool = false

    # True, if member restricted/unrestricted/banned/unbanned events should be returned
    property member_restrictions : ::Bool = false

    # True, if changes in chat information should be returned
    property info_changes : ::Bool = false

    # True, if changes in chat settings should be returned
    property setting_changes : ::Bool = false

    def initialize(@message_edits : ::Bool = false, @message_deletions : ::Bool = false, @message_pins : ::Bool = false, @member_joins : ::Bool = false, @member_leaves : ::Bool = false, @member_invites : ::Bool = false, @member_promotions : ::Bool = false, @member_restrictions : ::Bool = false, @info_changes : ::Bool = false, @setting_changes : ::Bool = false)
    end
  end
end
