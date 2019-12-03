# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about background to set.
  abstract class InputBackground < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "inputBackgroundLocal" => Types::InputBackground::Local,
      "inputBackgroundRemote" => Types::InputBackground::Remote
    })
  end
end

require "./input_background/local"
require "./input_background/remote"
