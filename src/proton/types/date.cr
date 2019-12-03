# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a date according to the Gregorian calendar.
  class Date < Types::Base
    include JSON::Serializable

    # Day of the month, 1-31
    property day : ::Int32

    # Month, 1-12
    property month : ::Int32

    # Year, 1-9999
    property year : ::Int32

    def initialize(@day : ::Int32, @month : ::Int32, @year : ::Int32)
    end
  end
end
