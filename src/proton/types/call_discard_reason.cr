# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the reason why a call was discarded.
  class CallDiscardReason < Types::Base

    def initialize()
    end
  end
end

require "./call_discard_reason/empty"
require "./call_discard_reason/missed"
require "./call_discard_reason/declined"
require "./call_discard_reason/disconnected"
require "./call_discard_reason/hung_up"