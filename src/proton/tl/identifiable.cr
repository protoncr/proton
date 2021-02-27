module Proton::TL
  # Anything including this module is identifiable by both ends (client-server)
  # when performing Remote Procedure Calls (RPC) and transmission of objects.
  module Identifiable
    # The unique identifier for the type.
    abstract def constructor_id : UInt32
  end
end
