# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A supergroup (i.e.
  # a chat with up to GetOption("supergroup_max_size") other users), or channel (with unlimited members).
  # supergroup_id [::Int32] Supergroup or channel identifier.
  # is_channel [::Bool] True, if the supergroup is a channel.
  class ChatType::Supergroup < Types::ChatType
    property supergroup_id : ::Int32
    property is_channel : ::Bool

    def initialize(@supergroup_id : ::Int32, @is_channel : ::Bool)
    end
  end
end

