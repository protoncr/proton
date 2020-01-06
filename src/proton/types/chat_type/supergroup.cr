# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A supergroup (i.e.
  # a chat with up to GetOption("supergroup_max_size") other users), or channel (with unlimited members).
  class ChatType::Supergroup < Types::ChatType
    include JSON::Serializable

    # Supergroup or channel identifier
    property supergroup_id : ::Int32

    # True, if the supergroup is a channel
    property is_channel : ::Bool = false

    def initialize(@supergroup_id : ::Int32, @is_channel : ::Bool = false)
    end
  end
end
