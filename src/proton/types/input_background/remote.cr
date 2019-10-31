# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A background from the server.
  # background_id [::Int64] The background identifier.
  class InputBackground::Remote < Types::InputBackground
    property background_id : ::Int64

    def initialize(@background_id : ::Int64)
    end
  end
end

