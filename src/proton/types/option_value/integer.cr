# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents an integer option.
  # value [::Int32] The value of the option.
  class OptionValue::Integer < Types::OptionValue
    property value : ::Int32

    def initialize(@value : ::Int32)
    end
  end
end

