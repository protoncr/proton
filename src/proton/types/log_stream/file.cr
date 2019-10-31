# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The log is written to a file.
  # path [::String] Path to the file to where the internal TDLib log will be written.
  # max_file_size [::Int64] Maximum size of the file to where the internal TDLib log is written before the file will be
  #   auto-rotated.
  class LogStream::File < Types::LogStream
    property path : ::String
    property max_file_size : ::Int64

    def initialize(@path : ::String, @max_file_size : ::Int64)
    end
  end
end

