# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the result of a custom request.
  # result [::String] A JSON-serialized result.
  class CustomRequestResult < Types::Base
    property result : ::String

    def initialize(@result : ::String)
    end
  end
end

