# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of sessions.
  class Sessions < Types::Base
    include JSON::Serializable

    # List of sessions
    property sessions : ::Array(Proton::Types::Session)

    def initialize(@sessions : ::Array(Proton::Types::Session))
    end
  end
end
