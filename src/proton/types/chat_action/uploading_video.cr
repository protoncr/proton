# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The user is uploading a video.
  # progress [::Int32] Upload progress, as a percentage.
  class ChatAction::UploadingVideo < Types::ChatAction
    property progress : ::Int32

    def initialize(@progress : ::Int32)
    end
  end
end

