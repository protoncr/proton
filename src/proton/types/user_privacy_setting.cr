# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes available user privacy settings.
  class UserPrivacySetting < Types::Base

    def initialize()
    end
  end
end

require "./user_privacy_setting/show_status"
  require "./user_privacy_setting/show_profile_photo"
  require "./user_privacy_setting/show_link_in_forwarded_messages"
  require "./user_privacy_setting/allow_chat_invites"
  require "./user_privacy_setting/allow_calls"
  require "./user_privacy_setting/allow_peer_to_peer_calls"