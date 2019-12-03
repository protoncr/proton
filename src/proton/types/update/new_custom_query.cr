# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A new incoming query; for bots only.
  class Update::NewCustomQuery < Types::Update
    include JSON::Serializable

    # The query identifier
    property id : ::Int64

    # JSON-serialized query data
    property data : ::String

    # Query timeout
    property timeout : ::Int32

    def initialize(@id : ::Int64, @data : ::String, @timeout : ::Int32)
    end
  end
end
