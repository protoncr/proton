# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The is_all_history_available setting of a supergroup was toggled.
  class ChatEventAction::IsAllHistoryAvailableToggled < Types::ChatEventAction
    include JSON::Serializable

    # New value of is_all_history_available
    property is_all_history_available : ::Bool

    def initialize(@is_all_history_available : ::Bool)
    end
  end
end
