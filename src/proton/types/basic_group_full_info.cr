# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains full information about a basic group.
  # description [::String] Group description.
  # creator_user_id [::Int32] User identifier of the creator of the group; 0 if unknown.
  # members [::Array(Proton::Types::ChatMember)] Group members.
  # invite_link [::String] Invite link for this group; available only for the group creator and only after it has been
  #   generated at least once.
  class BasicGroupFullInfo < Types::Base
    property description : ::String
    property creator_user_id : ::Int32
    property members : ::Array(Proton::Types::ChatMember)
    property invite_link : ::String

    def initialize(@description : ::String, @creator_user_id : ::Int32, @members : ::Array(Proton::Types::ChatMember), @invite_link : ::String)
    end
  end
end

