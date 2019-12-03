# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the exact type of a problem with a call.
  abstract class CallProblem < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "callProblemEcho" => Types::CallProblem::Echo,
      "callProblemNoise" => Types::CallProblem::Noise,
      "callProblemInterruptions" => Types::CallProblem::Interruptions,
      "callProblemDistortedSpeech" => Types::CallProblem::DistortedSpeech,
      "callProblemSilentLocal" => Types::CallProblem::SilentLocal,
      "callProblemSilentRemote" => Types::CallProblem::SilentRemote,
      "callProblemDropped" => Types::CallProblem::Dropped
    })
  end
end

require "./call_problem/echo"
require "./call_problem/noise"
require "./call_problem/interruptions"
require "./call_problem/distorted_speech"
require "./call_problem/silent_local"
require "./call_problem/silent_remote"
require "./call_problem/dropped"
