# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A forwarded messages.
  # total_count [::Int32] Number of forwarded messages.
  class PushMessageContent::MessageForwards < Types::PushMessageContent
    property total_count : ::Int32

    def initialize(@total_count : ::Int32)
    end
  end
end

