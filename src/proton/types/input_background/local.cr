# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A background from a local file.
  # background [Proton::Types::InputFile] Background file to use.
  #   Only inputFileLocal and inputFileGenerated are supported.
  #   The file nust be in JPEG format for wallpapers and in PNG format for patterns.
  class InputBackground::Local < Types::InputBackground
    property background : Proton::Types::InputFile

    def initialize(@background : Proton::Types::InputFile)
    end
  end
end

