# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The file contains an error.
  # The error is considered resolved when the file changes.
  class InputPassportElementErrorSource::File < Types::InputPassportElementErrorSource
    include JSON::Serializable

    # Current hash of the file which has the error
    property file_hash : ::String

    def initialize(@file_hash : ::String)
    end
  end
end
