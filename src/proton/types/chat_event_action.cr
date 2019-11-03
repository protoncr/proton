# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a chat event.
  class ChatEventAction < Types::Base

    def initialize()
    end
  end
end

require "./chat_event_action/message_edited"
require "./chat_event_action/message_deleted"
require "./chat_event_action/poll_stopped"
require "./chat_event_action/message_pinned"
require "./chat_event_action/message_unpinned"
require "./chat_event_action/member_joined"
require "./chat_event_action/member_left"
require "./chat_event_action/member_invited"
require "./chat_event_action/member_promoted"
require "./chat_event_action/member_restricted"
require "./chat_event_action/title_changed"
require "./chat_event_action/permissions_changed"
require "./chat_event_action/description_changed"
require "./chat_event_action/username_changed"
require "./chat_event_action/photo_changed"
require "./chat_event_action/invites_toggled"
require "./chat_event_action/sign_messages_toggled"
require "./chat_event_action/sticker_set_changed"
require "./chat_event_action/is_all_history_available_toggled"