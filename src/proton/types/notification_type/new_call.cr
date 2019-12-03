# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # New call was received.
  class NotificationType::NewCall < Types::NotificationType
    include JSON::Serializable

    # Call identifier
    property call_id : ::Int32

    def initialize(@call_id : ::Int32)
    end
  end
end
