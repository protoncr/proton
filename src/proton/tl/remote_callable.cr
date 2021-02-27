module Proton::TL
  # Objects including this module indicate that they are suitable for
  # use to perform Remote Procedure Calls (RPC), and know what the type of
  # the response will be.
  module RemoteCallable
    abstract def return_type : TLObject
  end
end
