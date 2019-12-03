# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An option changed its value.
  class Update::Option < Types::Update
    include JSON::Serializable

    # The option name
    property name : ::String

    # The new option value
    property value : Proton::Types::OptionValue

    def initialize(@name : ::String, @value : Proton::Types::OptionValue)
    end
  end
end
