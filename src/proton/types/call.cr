# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a call.
  # id [::Int32] Call identifier, not persistent.
  # user_id [::Int32] Peer user identifier.
  # is_outgoing [::Bool] True, if the call is outgoing.
  # state [Proton::Types::CallState] Call state.
  class Call < Types::Base
    property id : ::Int32
    property user_id : ::Int32
    property is_outgoing : ::Bool
    property state : Proton::Types::CallState

    def initialize(@id : ::Int32, @user_id : ::Int32, @is_outgoing : ::Bool, @state : Proton::Types::CallState)
    end
  end
end

