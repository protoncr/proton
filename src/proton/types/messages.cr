# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of messages.
  class Messages < Types::Base
    include JSON::Serializable

    # Approximate total count of messages found
    property total_count : ::Int32

    # List of messages; messages may be null
    property messages : ::Array(Proton::Types::Message)? = nil

    def initialize(@total_count : ::Int32, @messages : ::Array(Proton::Types::Message)? = nil)
    end
  end
end
