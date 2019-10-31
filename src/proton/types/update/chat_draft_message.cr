# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A chat draft has changed.
  # Be aware that the update may come in the currently opened chat but with old content of the draft.
  # If the user has changed the content of the draft, this update shouldn't be applied.
  # chat_id [::Int64] Chat identifier.
  # draft_message [Proton::Types::DraftMessage, nil] The new draft message; may be null.
  # order [::Int64] New value of the chat order.
  class Update::ChatDraftMessage < Types::Update
    property chat_id : ::Int64
    property draft_message : Proton::Types::DraftMessage?
    property order : ::Int64

    def initialize(@chat_id : ::Int64, @order : ::Int64, @draft_message : Proton::Types::DraftMessage? = nil)
    end
  end
end

