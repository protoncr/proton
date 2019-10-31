# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The supergroup sticker set was changed.
  # old_sticker_set_id [::Int64] Previous identifier of the chat sticker set; 0 if none.
  # new_sticker_set_id [::Int64] New identifier of the chat sticker set; 0 if none.
  class ChatEventAction::StickerSetChanged < Types::ChatEventAction
    property old_sticker_set_id : ::Int64
    property new_sticker_set_id : ::Int64

    def initialize(@old_sticker_set_id : ::Int64, @new_sticker_set_id : ::Int64)
    end
  end
end

