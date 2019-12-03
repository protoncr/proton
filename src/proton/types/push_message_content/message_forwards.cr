# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A forwarded messages.
  class PushMessageContent::MessageForwards < Types::PushMessageContent
    include JSON::Serializable

    # Number of forwarded messages
    property total_count : ::Int32

    def initialize(@total_count : ::Int32)
    end
  end
end
