# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A new incoming query; for bots only.
  # id [::Int64] The query identifier.
  # data [::String] JSON-serialized query data.
  # timeout [::Int32] Query timeout.
  class Update::NewCustomQuery < Types::Update
    property id : ::Int64
    property data : ::String
    property timeout : ::Int32

    def initialize(@id : ::Int64, @data : ::String, @timeout : ::Int32)
    end
  end
end

