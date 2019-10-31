# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a chat event.
  # id [::Int64] Chat event identifier.
  # date [::Int32] Point in time (Unix timestamp) when the event happened.
  # user_id [::Int32] Identifier of the user who performed the action that triggered the event.
  # action [Proton::Types::ChatEventAction] Action performed by the user.
  class ChatEvent < Types::Base
    property id : ::Int64
    property date : ::Int32
    property user_id : ::Int32
    property action : Proton::Types::ChatEventAction

    def initialize(@id : ::Int64, @date : ::Int32, @user_id : ::Int32, @action : Proton::Types::ChatEventAction)
    end
  end
end

