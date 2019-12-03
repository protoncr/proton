# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a poll.
  class Poll < Types::Base
    include JSON::Serializable

    # Unique poll identifier
    property id : ::Int64

    # Poll question, 1-255 characters
    property question : ::String

    # List of poll answer options
    property options : ::Array(Proton::Types::PollOption)

    # Total number of voters, participating in the poll
    property total_voter_count : ::Int32

    # True, if the poll is closed
    property is_closed : ::Bool

    def initialize(@id : ::Int64, @question : ::String, @options : ::Array(Proton::Types::PollOption), @total_voter_count : ::Int32, @is_closed : ::Bool)
    end
  end
end
