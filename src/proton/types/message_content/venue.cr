# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with information about a venue.
  # venue [Proton::Types::Venue] Message content.
  class MessageContent::Venue < Types::MessageContent
    property venue : Proton::Types::Venue

    def initialize(@venue : Proton::Types::Venue)
    end
  end
end

