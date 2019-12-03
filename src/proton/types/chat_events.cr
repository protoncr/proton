# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of chat events.
  class ChatEvents < Types::Base
    include JSON::Serializable

    # List of events
    property events : ::Array(Proton::Types::ChatEvent)

    def initialize(@events : ::Array(Proton::Types::ChatEvent))
    end
  end
end
