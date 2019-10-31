# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The element contains an error in an unspecified place.
  # The error will be considered resolved when new data is added.
  # element_hash [::String] Current hash of the entire element.
  class InputPassportElementErrorSource::Unspecified < Types::InputPassportElementErrorSource
    property element_hash : ::String

    def initialize(@element_hash : ::String)
    end
  end
end

