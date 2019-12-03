# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The supergroup sticker set was changed.
  class ChatEventAction::StickerSetChanged < Types::ChatEventAction
    include JSON::Serializable

    # Previous identifier of the chat sticker set; 0 if none
    property old_sticker_set_id : ::String

    # New identifier of the chat sticker set; 0 if none
    property new_sticker_set_id : ::String

    def initialize(@old_sticker_set_id : ::String, @new_sticker_set_id : ::String)
    end
  end
end
