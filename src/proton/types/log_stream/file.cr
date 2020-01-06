# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The log is written to a file.
  class LogStream::File < Types::LogStream
    include JSON::Serializable

    # Path to the file to where the internal TDLib log will be written
    property path : ::String

    # Maximum size of the file to where the internal TDLib log is written before the file will be auto-rotated
    property max_file_size : ::Int64

    def initialize(@path : ::String, @max_file_size : ::Int64)
    end
  end
end
