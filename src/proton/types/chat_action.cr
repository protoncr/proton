# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the different types of activity in a chat.
  class ChatAction < Types::Base

    def initialize()
    end
  end
end

require "./chat_action/typing"
  require "./chat_action/recording_video"
  require "./chat_action/uploading_video"
  require "./chat_action/recording_voice_note"
  require "./chat_action/uploading_voice_note"
  require "./chat_action/uploading_photo"
  require "./chat_action/uploading_document"
  require "./chat_action/choosing_location"
  require "./chat_action/choosing_contact"
  require "./chat_action/start_playing_game"
  require "./chat_action/recording_video_note"
  require "./chat_action/uploading_video_note"
  require "./chat_action/cancel"