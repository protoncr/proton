# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a string option.
  class OptionValue::TDString < Types::OptionValue
    include JSON::Serializable

    # The value of the option
    property value : ::String

    def initialize(@value : ::String)
    end
  end
end
