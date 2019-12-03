# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Part of the face, relative to which a mask should be placed.
  abstract class MaskPoint < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "maskPointForehead" => Types::MaskPoint::Forehead,
      "maskPointEyes" => Types::MaskPoint::Eyes,
      "maskPointMouth" => Types::MaskPoint::Mouth,
      "maskPointChin" => Types::MaskPoint::Chin
    })
  end
end

require "./mask_point/forehead"
require "./mask_point/eyes"
require "./mask_point/mouth"
require "./mask_point/chin"
