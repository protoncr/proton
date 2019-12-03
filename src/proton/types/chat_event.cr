# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a chat event.
  class ChatEvent < Types::Base
    include JSON::Serializable

    # Chat event identifier
    property id : ::String

    # Point in time (Unix timestamp) when the event happened
    property date : ::Int32

    # Identifier of the user who performed the action that triggered the event
    property user_id : ::Int32

    # Action performed by the user
    property action : Proton::Types::ChatEventAction

    def initialize(@id : ::String, @date : ::Int32, @user_id : ::Int32, @action : Proton::Types::ChatEventAction)
    end
  end
end
