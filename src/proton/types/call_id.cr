# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the call identifier.
  # id [::Int32] Call identifier.
  class CallId < Types::Base
    property id : ::Int32

    def initialize(@id : ::Int32)
    end
  end
end

