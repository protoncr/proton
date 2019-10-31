# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # A full list of available network statistic entries.
  # since_date [::Int32] Point in time (Unix timestamp) when the app began collecting statistics.
  # entries [::Array(Proton::Types::NetworkStatisticsEntry)] Network statistics entries.
  class NetworkStatistics < Types::Base
    property since_date : ::Int32
    property entries : ::Array(Proton::Types::NetworkStatisticsEntry)

    def initialize(@since_date : ::Int32, @entries : ::Array(Proton::Types::NetworkStatisticsEntry))
    end
  end
end

