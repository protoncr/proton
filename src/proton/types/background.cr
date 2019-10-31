# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a chat background.
  # id [::Int64] Unique background identifier.
  # is_default [::Bool] True, if this is one of default backgrounds.
  # is_dark [::Bool] True, if the background is dark and is recommended to be used with dark theme.
  # name [::String] Unique background name.
  # document [Proton::Types::Document, nil] Document with the background; may be null.
  #   Null only for solid backgrounds.
  # type [Proton::Types::BackgroundType] Type of the background.
  class Background < Types::Base
    property id : ::Int64
    property is_default : ::Bool
    property is_dark : ::Bool
    property name : ::String
    property document : Proton::Types::Document?
    property type : Proton::Types::BackgroundType

    def initialize(@id : ::Int64, @is_default : ::Bool, @is_dark : ::Bool, @name : ::String, @type : Proton::Types::BackgroundType, @document : Proton::Types::Document? = nil)
    end
  end
end

