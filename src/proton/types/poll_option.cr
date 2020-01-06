# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes one answer option of a poll.
  class PollOption < Types::Base
    include JSON::Serializable

    # Option text, 1-100 characters
    property text : ::String

    # Number of voters for this option, available only for closed or voted polls
    property voter_count : ::Int32

    # The percentage of votes for this option, 0-100
    property vote_percentage : ::Int32

    # True, if the option was chosen by the user
    property is_chosen : ::Bool = false

    # True, if the option is being chosen by a pending setPollAnswer request
    property is_being_chosen : ::Bool = false

    def initialize(@text : ::String, @voter_count : ::Int32, @vote_percentage : ::Int32, @is_chosen : ::Bool = false, @is_being_chosen : ::Bool = false)
    end
  end
end
