# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains database statistics.
  # statistics [::String] Database statistics in an unspecified human-readable format.
  class DatabaseStatistics < Types::Base
    property statistics : ::String

    def initialize(@statistics : ::String)
    end
  end
end

