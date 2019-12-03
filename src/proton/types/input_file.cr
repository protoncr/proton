# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Points to a file.
  abstract class InputFile < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "inputFileId" => Types::InputFile::Id,
      "inputFileRemote" => Types::InputFile::Remote,
      "inputFileLocal" => Types::InputFile::Local,
      "inputFileGenerated" => Types::InputFile::Generated
    })
  end
end

require "./input_file/id"
require "./input_file/remote"
require "./input_file/local"
require "./input_file/generated"
