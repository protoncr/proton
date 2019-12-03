# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A button that opens a specified URL and automatically logs in in current user if they allowed to do that.
  class InlineKeyboardButtonType::LoginUrl < Types::InlineKeyboardButtonType
    include JSON::Serializable

    # HTTP URL to open
    property url : ::String

    # Unique button identifier
    property id : ::Int32

    # If non-empty, new text of the button in forwarded messages
    property forward_text : ::String

    def initialize(@url : ::String, @id : ::Int32, @forward_text : ::String)
    end
  end
end
