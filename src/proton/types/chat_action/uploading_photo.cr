# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The user is uploading a photo.
  class ChatAction::UploadingPhoto < Types::ChatAction
    include JSON::Serializable

    # Upload progress, as a percentage
    property progress : ::Int32

    def initialize(@progress : ::Int32)
    end
  end
end
