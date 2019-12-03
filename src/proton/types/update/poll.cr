# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Information about a poll was updated; for bots only.
  class Update::Poll < Types::Update
    include JSON::Serializable

    # New data about the poll
    property poll : Proton::Types::Poll

    def initialize(@poll : Proton::Types::Poll)
    end
  end
end
