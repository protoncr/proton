# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # File with the date it was uploaded.
  class DatedFile < Types::Base
    include JSON::Serializable

    # The file
    property file : Proton::Types::File

    # Point in time (Unix timestamp) when the file was uploaded
    property date : ::Int32

    def initialize(@file : Proton::Types::File, @date : ::Int32)
    end
  end
end
