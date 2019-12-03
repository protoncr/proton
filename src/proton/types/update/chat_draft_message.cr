# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A chat draft has changed.
  # Be aware that the update may come in the currently opened chat but with old content of the draft.
  # If the user has changed the content of the draft, this update shouldn't be applied.
  class Update::ChatDraftMessage < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int32

    # New value of the chat order
    property order : ::String

    # The new draft message; may be null
    property draft_message : Proton::Types::DraftMessage? = nil

    def initialize(@chat_id : ::Int32, @order : ::String, @draft_message : Proton::Types::DraftMessage? = nil)
    end
  end
end
