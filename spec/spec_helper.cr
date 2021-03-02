require "../src/proton"

require "spectator"

Spectator.configure do |config|
  config.fail_blank # Fail on no tests.
  config.randomize
  config.profile
  # config.formatter = Spectator::Formatting::DocumentFormatter.new(STDOUT)
end
