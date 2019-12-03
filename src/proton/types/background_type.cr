# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a type of a background.
  abstract class BackgroundType < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "backgroundTypeWallpaper" => Types::BackgroundType::Wallpaper,
      "backgroundTypePattern" => Types::BackgroundType::Pattern,
      "backgroundTypeSolid" => Types::BackgroundType::Solid
    })
  end
end

require "./background_type/wallpaper"
require "./background_type/pattern"
require "./background_type/solid"
