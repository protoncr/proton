# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of messages found by a search.
  class FoundMessages < Types::Base
    include JSON::Serializable

    # List of messages
    property messages : ::Array(Proton::Types::Message)

    # Value to pass as from_search_id to get more results
    property next_from_search_id : ::String

    def initialize(@messages : ::Array(Proton::Types::Message), @next_from_search_id : ::String)
    end
  end
end
