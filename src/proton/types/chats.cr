# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a list of chats.
  class Chats < Types::Base
    include JSON::Serializable

    # List of chat identifiers
    property chat_ids : ::Array(::Int64)

    def initialize(@chat_ids : ::Array(::Int64))
    end
  end
end
