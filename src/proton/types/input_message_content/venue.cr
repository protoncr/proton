# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with information about a venue.
  class InputMessageContent::Venue < Types::InputMessageContent
    include JSON::Serializable

    # Venue to send
    property venue : Proton::Types::Venue

    def initialize(@venue : Proton::Types::Venue)
    end
  end
end
