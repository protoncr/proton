# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a boolean option.
  # value [::Bool] The value of the option.
  class OptionValue::Boolean < Types::OptionValue
    property value : ::Bool

    def initialize(@value : ::Bool)
    end
  end
end

