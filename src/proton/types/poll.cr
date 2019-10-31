# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a poll.
  # id [::Int64] Unique poll identifier.
  # question [::String] Poll question, 1-255 characters.
  # options [::Array(Proton::Types::PollOption)] List of poll answer options.
  # total_voter_count [::Int32] Total number of voters, participating in the poll.
  # is_closed [::Bool] True, if the poll is closed.
  class Poll < Types::Base
    property id : ::Int64
    property question : ::String
    property options : ::Array(Proton::Types::PollOption)
    property total_voter_count : ::Int32
    property is_closed : ::Bool

    def initialize(@id : ::Int64, @question : ::String, @options : ::Array(Proton::Types::PollOption), @total_voter_count : ::Int32, @is_closed : ::Bool)
    end
  end
end

