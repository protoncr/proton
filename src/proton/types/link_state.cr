# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the relationship between user A and user B.
  # For incoming_link, user A is the current user; for outgoing_link, user B is the current user.
  class LinkState < Types::Base

    def initialize()
    end
  end
end

require "./link_state/none"
require "./link_state/knows_phone_number"
require "./link_state/is_contact"