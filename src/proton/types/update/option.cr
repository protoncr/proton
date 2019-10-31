# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An option changed its value.
  # name [::String] The option name.
  # value [Proton::Types::OptionValue] The new option value.
  class Update::Option < Types::Update
    property name : ::String
    property value : Proton::Types::OptionValue

    def initialize(@name : ::String, @value : Proton::Types::OptionValue)
    end
  end
end

