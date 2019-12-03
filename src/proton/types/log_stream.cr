# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a stream to which TDLib internal log is written.
  abstract class LogStream < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "logStreamDefault" => Types::LogStream::Default,
      "logStreamFile" => Types::LogStream::File,
      "logStreamEmpty" => Types::LogStream::Empty
    })
  end
end

require "./log_stream/default"
require "./log_stream/file"
require "./log_stream/empty"
