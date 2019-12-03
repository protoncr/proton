# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents an integer option.
  class OptionValue::TDInt < Types::OptionValue
    include JSON::Serializable

    # The value of the option
    property value : ::Int32

    def initialize(@value : ::Int32)
    end
  end
end
