# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Information about a poll was updated; for bots only.
  # poll [Proton::Types::Poll] New data about the poll.
  class Update::Poll < Types::Update
    property poll : Proton::Types::Poll

    def initialize(@poll : Proton::Types::Poll)
    end
  end
end

