# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a chat invite link.
  # invite_link [::String] Chat invite link.
  class ChatInviteLink < Types::Base
    property invite_link : ::String

    def initialize(@invite_link : ::String)
    end
  end
end

