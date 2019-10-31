# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the photo of a chat.
  # small [Proton::Types::File] A small (160x160) chat photo.
  #   The file can be downloaded only before the photo is changed.
  # big [Proton::Types::File] A big (640x640) chat photo.
  #   The file can be downloaded only before the photo is changed.
  class ChatPhoto < Types::Base
    property small : Proton::Types::File
    property big : Proton::Types::File

    def initialize(@small : Proton::Types::File, @big : Proton::Types::File)
    end
  end
end

