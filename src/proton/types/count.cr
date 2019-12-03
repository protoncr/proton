# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a counter.
  class Count < Types::Base
    include JSON::Serializable

    # Count
    property count : ::Int32

    def initialize(@count : ::Int32)
    end
  end
end
