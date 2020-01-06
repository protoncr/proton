# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a chat background.
  class Background < Types::Base
    include JSON::Serializable

    # Unique background identifier
    property id : ::String

    # Unique background name
    property name : ::String

    # Type of the background
    property type : Proton::Types::BackgroundType

    # True, if this is one of default backgrounds
    property is_default : ::Bool = false

    # True, if the background is dark and is recommended to be used with dark theme
    property is_dark : ::Bool = false

    # Document with the background; may be null. Null only for solid backgrounds
    property document : Proton::Types::Document? = nil

    def initialize(@id : ::String, @name : ::String, @type : Proton::Types::BackgroundType, @is_default : ::Bool = false, @is_dark : ::Bool = false, @document : Proton::Types::Document? = nil)
    end
  end
end
