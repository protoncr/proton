# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The selected background has changed.
  class Update::SelectedBackground < Types::Update
    include JSON::Serializable

    # True, if background for dark theme has changed
    property for_dark_theme : ::Bool

    # The new selected background; may be null
    property background : Proton::Types::Background? = nil

    def initialize(@for_dark_theme : ::Bool, @background : Proton::Types::Background? = nil)
    end
  end
end
