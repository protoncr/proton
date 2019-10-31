# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a remote file.
  # id [::String, nil] Remote file identifier; may be empty.
  #   Can be used across application restarts or even from other devices for the current user.
  #   If the ID starts with "http://" or "https://", it represents the HTTP URL of the file.
  #   TDLib is currently unable to download files if only their URL is known.
  #   If downloadFile is called on such a file or if it is sent to a secret chat, TDLib starts a file generation
  #   process by sending updateFileGenerationStart to the client with the HTTP URL in the original_path and "#url#" as the
  #   conversion string.
  #   Clients should generate the file by downloading it to the specified location.
  # is_uploading_active [::Bool] True, if the file is currently being uploaded (or a remote copy is being generated by
  #   some other means).
  # is_uploading_completed [::Bool] True, if a remote copy is fully available.
  # uploaded_size [::Int32] Size of the remote available part of the file; 0 if unknown.
  class RemoteFile < Types::Base
    property id : ::String?
    property is_uploading_active : ::Bool
    property is_uploading_completed : ::Bool
    property uploaded_size : ::Int32

    def initialize(@is_uploading_active : ::Bool, @is_uploading_completed : ::Bool, @uploaded_size : ::Int32, @id : ::String? = nil)
    end
  end
end

