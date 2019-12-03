# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a call.
  class Call < Types::Base
    include JSON::Serializable

    # Call identifier, not persistent
    property id : ::Int32

    # Peer user identifier
    property user_id : ::Int32

    # True, if the call is outgoing
    property is_outgoing : ::Bool

    # Call state
    property state : Proton::Types::CallState

    def initialize(@id : ::Int32, @user_id : ::Int32, @is_outgoing : ::Bool, @state : Proton::Types::CallState)
    end
  end
end
