# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes actions that a user is allowed to take in a chat.
  # can_send_messages [::Bool] True, if the user can send text messages, contacts, locations, and venues.
  # can_send_media_messages [::Bool] True, if the user can send audio files, documents, photos, videos, video notes,
  #   and voice notes.
  #   Implies can_send_messages permissions.
  # can_send_polls [::Bool] True, if the user can send polls.
  #   Implies can_send_messages permissions.
  # can_send_other_messages [::Bool] True, if the user can send animations, games, and stickers and use inline bots.
  #   Implies can_send_messages permissions.
  # can_add_web_page_previews [::Bool] True, if the user may add a web page preview to their messages.
  #   Implies can_send_messages permissions.
  # can_change_info [::Bool] True, if the user can change the chat title, photo, and other settings.
  # can_invite_users [::Bool] True, if the user can invite new users to the chat.
  # can_pin_messages [::Bool] True, if the user can pin messages.
  class ChatPermissions < Types::Base
    property can_send_messages : ::Bool
    property can_send_media_messages : ::Bool
    property can_send_polls : ::Bool
    property can_send_other_messages : ::Bool
    property can_add_web_page_previews : ::Bool
    property can_change_info : ::Bool
    property can_invite_users : ::Bool
    property can_pin_messages : ::Bool

    def initialize(@can_send_messages : ::Bool, @can_send_media_messages : ::Bool, @can_send_polls : ::Bool, @can_send_other_messages : ::Bool, @can_add_web_page_previews : ::Bool, @can_change_info : ::Bool, @can_invite_users : ::Bool, @can_pin_messages : ::Bool)
    end
  end
end

