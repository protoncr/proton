# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of messages found by a search.
  # messages [::Array(Proton::Types::Message)] List of messages.
  # next_from_search_id [::Int64] Value to pass as from_search_id to get more results.
  class FoundMessages < Types::Base
    property messages : ::Array(Proton::Types::Message)
    property next_from_search_id : ::Int64

    def initialize(@messages : ::Array(Proton::Types::Message), @next_from_search_id : ::Int64)
    end
  end
end

