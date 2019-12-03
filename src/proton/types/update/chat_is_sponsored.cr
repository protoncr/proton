# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A chat's is_sponsored field has changed.
  class Update::ChatIsSponsored < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int64

    # New value of is_sponsored
    property is_sponsored : ::Bool

    # New value of chat order
    property order : ::Int64

    def initialize(@chat_id : ::Int64, @is_sponsored : ::Bool, @order : ::Int64)
    end
  end
end
