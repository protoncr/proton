# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The user is uploading a voice note.
  class ChatAction::UploadingVoiceNote < Types::ChatAction
    include JSON::Serializable

    # Upload progress, as a percentage
    property progress : ::Int32

    def initialize(@progress : ::Int32)
    end
  end
end
