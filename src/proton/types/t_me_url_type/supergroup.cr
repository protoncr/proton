# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A URL linking to a public supergroup or channel.
  # supergroup_id [::Int64] Identifier of the supergroup or channel.
  class TMeUrlType::Supergroup < Types::TMeUrlType
    property supergroup_id : ::Int64

    def initialize(@supergroup_id : ::Int64)
    end
  end
end

