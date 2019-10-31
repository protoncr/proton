# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A data field contains an error.
  # The error is considered resolved when the field's value changes.
  # field_name [::String] Field name.
  # data_hash [::String] Current data hash.
  class InputPassportElementErrorSource::DataField < Types::InputPassportElementErrorSource
    property field_name : ::String
    property data_hash : ::String

    def initialize(@field_name : ::String, @data_hash : ::String)
    end
  end
end

