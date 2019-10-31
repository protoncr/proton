# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of messages.
  # total_count [::Int32] Approximate total count of messages found.
  # messages [::Array(Proton::Types::Message), nil] List of messages; messages may be null.
  class Messages < Types::Base
    property total_count : ::Int32
    property messages : ::Array(Proton::Types::Message)?

    def initialize(@total_count : ::Int32, @messages : ::Array(Proton::Types::Message)? = nil)
    end
  end
end

