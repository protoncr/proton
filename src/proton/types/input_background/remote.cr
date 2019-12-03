# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A background from the server.
  class InputBackground::Remote < Types::InputBackground
    include JSON::Serializable

    # The background identifier
    property background_id : ::Int64

    def initialize(@background_id : ::Int64)
    end
  end
end
