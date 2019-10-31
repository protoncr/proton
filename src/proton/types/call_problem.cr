# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the exact type of a problem with a call.
  class CallProblem < Types::Base

    def initialize()
    end
  end
end

require "./call_problem/echo"
  require "./call_problem/noise"
  require "./call_problem/interruptions"
  require "./call_problem/distorted_speech"
  require "./call_problem/silent_local"
  require "./call_problem/silent_remote"
  require "./call_problem/dropped"