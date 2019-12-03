# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a value representing a number of seconds.
  class Seconds < Types::Base
    include JSON::Serializable

    # Number of seconds
    property seconds : ::Float64

    def initialize(@seconds : ::Float64)
    end
  end
end
