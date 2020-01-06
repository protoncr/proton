# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes actions that a user is allowed to take in a chat.
  class ChatPermissions < Types::Base
    include JSON::Serializable

    # True, if the user can send text messages, contacts, locations, and venues
    property can_send_messages : ::Bool = false

    # True, if the user can send audio files, documents, photos, videos, video notes, and voice notes. Implies can_send_messages permissions
    property can_send_media_messages : ::Bool = false

    # True, if the user can send polls. Implies can_send_messages permissions
    property can_send_polls : ::Bool = false

    # True, if the user can send animations, games, and stickers and use inline bots. Implies can_send_messages permissions
    property can_send_other_messages : ::Bool = false

    # True, if the user may add a web page preview to their messages. Implies can_send_messages permissions
    property can_add_web_page_previews : ::Bool = false

    # True, if the user can change the chat title, photo, and other settings
    property can_change_info : ::Bool = false

    # True, if the user can invite new users to the chat
    property can_invite_users : ::Bool = false

    # True, if the user can pin messages
    property can_pin_messages : ::Bool = false

    def initialize(@can_send_messages : ::Bool = false, @can_send_media_messages : ::Bool = false, @can_send_polls : ::Bool = false, @can_send_other_messages : ::Bool = false, @can_add_web_page_previews : ::Bool = false, @can_change_info : ::Bool = false, @can_invite_users : ::Bool = false, @can_pin_messages : ::Bool = false)
    end
  end
end
