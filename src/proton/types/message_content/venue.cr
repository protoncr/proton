# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with information about a venue.
  class MessageContent::Venue < Types::MessageContent
    include JSON::Serializable

    # Message content
    property venue : Proton::Types::Venue

    def initialize(@venue : Proton::Types::Venue)
    end
  end
end
