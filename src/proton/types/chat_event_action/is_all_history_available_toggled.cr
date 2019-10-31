# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The is_all_history_available setting of a supergroup was toggled.
  # is_all_history_available [::Bool] New value of is_all_history_available.
  class ChatEventAction::IsAllHistoryAvailableToggled < Types::ChatEventAction
    property is_all_history_available : ::Bool

    def initialize(@is_all_history_available : ::Bool)
    end
  end
end

