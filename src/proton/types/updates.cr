# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of updates.
  class Updates < Types::Base
    include JSON::Serializable

    # List of updates
    property updates : ::Array(Proton::Types::Update)

    def initialize(@updates : ::Array(Proton::Types::Update))
    end
  end
end
