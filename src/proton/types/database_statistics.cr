# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains database statistics.
  class DatabaseStatistics < Types::Base
    include JSON::Serializable

    # Database statistics in an unspecified human-readable format
    property statistics : ::String

    def initialize(@statistics : ::String)
    end
  end
end
