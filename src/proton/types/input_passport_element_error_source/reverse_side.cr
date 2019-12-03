# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The reverse side of the document contains an error.
  # The error is considered resolved when the file with the reverse side of the document changes.
  class InputPassportElementErrorSource::ReverseSide < Types::InputPassportElementErrorSource
    include JSON::Serializable

    # Current hash of the file containing the reverse side
    property file_hash : ::String

    def initialize(@file_hash : ::String)
    end
  end
end
