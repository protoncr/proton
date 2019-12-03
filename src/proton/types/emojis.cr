# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a list of emoji.
  class Emojis < Types::Base
    include JSON::Serializable

    # List of emojis
    property emojis : ::Array(::String)

    def initialize(@emojis : ::Array(::String))
    end
  end
end
