# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a file.
  # id [::Int32] Unique file identifier.
  # size [::Int32] File size; 0 if unknown.
  # expected_size [::Int32] Expected file size in case the exact file size is unknown, but an approximate size is
  #   known.
  #   Can be used to show download/upload progress.
  # local [Proton::Types::LocalFile] Information about the local copy of the file.
  # remote [Proton::Types::RemoteFile] Information about the remote copy of the file.
  class File < Types::Base
    property id : ::Int32
    property size : ::Int32
    property expected_size : ::Int32
    property local : Proton::Types::LocalFile
    property remote : Proton::Types::RemoteFile

    def initialize(@id : ::Int32, @size : ::Int32, @expected_size : ::Int32, @local : Proton::Types::LocalFile, @remote : Proton::Types::RemoteFile)
    end
  end
end

