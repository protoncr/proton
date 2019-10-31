# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The selected background has changed.
  # for_dark_theme [::Bool] True, if background for dark theme has changed.
  # background [Proton::Types::Background, nil] The new selected background; may be null.
  class Update::SelectedBackground < Types::Update
    property for_dark_theme : ::Bool
    property background : Proton::Types::Background?

    def initialize(@for_dark_theme : ::Bool, @background : Proton::Types::Background? = nil)
    end
  end
end

