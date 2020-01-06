# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A URL linking to a public supergroup or channel.
  class TMeUrlType::Supergroup < Types::TMeUrlType
    include JSON::Serializable

    # Identifier of the supergroup or channel
    property supergroup_id : ::Int64

    def initialize(@supergroup_id : ::Int64)
    end
  end
end
