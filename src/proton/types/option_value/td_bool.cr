# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a boolean option.
  class OptionValue::TDBool < Types::OptionValue
    include JSON::Serializable

    # The value of the option
    property value : ::Bool

    def initialize(@value : ::Bool)
    end
  end
end
