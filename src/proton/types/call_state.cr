# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the current call state.
  class CallState < Types::Base

    def initialize()
    end
  end
end

require "./call_state/pending"
require "./call_state/exchanging_keys"
require "./call_state/ready"
require "./call_state/hanging_up"
require "./call_state/discarded"
require "./call_state/error"