# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a TDLib internal log verbosity level.
  # verbosity_level [::Int32] Log verbosity level.
  class LogVerbosityLevel < Types::Base
    property verbosity_level : ::Int32

    def initialize(@verbosity_level : ::Int32)
    end
  end
end

