# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a stream to which TDLib internal log is written.
  class LogStream < Types::Base

    def initialize()
    end
  end
end

require "./log_stream/default"
  require "./log_stream/file"
  require "./log_stream/empty"