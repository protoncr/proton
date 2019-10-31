# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # One of the data fields contains an error.
  # The error will be considered resolved when the value of the field changes.
  # field_name [::String] Field name.
  class PassportElementErrorSource::DataField < Types::PassportElementErrorSource
    property field_name : ::String

    def initialize(@field_name : ::String)
    end
  end
end

