# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A button that opens a specified URL.
  class InlineKeyboardButtonType::Url < Types::InlineKeyboardButtonType
    include JSON::Serializable

    # HTTP or tg:// URL to open
    property url : ::String

    def initialize(@url : ::String)
    end
  end
end
