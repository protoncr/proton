# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes one answer option of a poll.
  # text [::String] Option text, 1-100 characters.
  # voter_count [::Int32] Number of voters for this option, available only for closed or voted polls.
  # vote_percentage [::Int32] The percentage of votes for this option, 0-100.
  # is_chosen [::Bool] True, if the option was chosen by the user.
  # is_being_chosen [::Bool] True, if the option is being chosen by a pending setPollAnswer request.
  class PollOption < Types::Base
    property text : ::String
    property voter_count : ::Int32
    property vote_percentage : ::Int32
    property is_chosen : ::Bool
    property is_being_chosen : ::Bool

    def initialize(@text : ::String, @voter_count : ::Int32, @vote_percentage : ::Int32, @is_chosen : ::Bool, @is_being_chosen : ::Bool)
    end
  end
end

