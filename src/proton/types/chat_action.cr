# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the different types of activity in a chat.
  abstract class ChatAction < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "chatActionTyping" => Types::ChatAction::Typing,
      "chatActionRecordingVideo" => Types::ChatAction::RecordingVideo,
      "chatActionUploadingVideo" => Types::ChatAction::UploadingVideo,
      "chatActionRecordingVoiceNote" => Types::ChatAction::RecordingVoiceNote,
      "chatActionUploadingVoiceNote" => Types::ChatAction::UploadingVoiceNote,
      "chatActionUploadingPhoto" => Types::ChatAction::UploadingPhoto,
      "chatActionUploadingDocument" => Types::ChatAction::UploadingDocument,
      "chatActionChoosingLocation" => Types::ChatAction::ChoosingLocation,
      "chatActionChoosingContact" => Types::ChatAction::ChoosingContact,
      "chatActionStartPlayingGame" => Types::ChatAction::StartPlayingGame,
      "chatActionRecordingVideoNote" => Types::ChatAction::RecordingVideoNote,
      "chatActionUploadingVideoNote" => Types::ChatAction::UploadingVideoNote,
      "chatActionCancel" => Types::ChatAction::Cancel
    })
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
