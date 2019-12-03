# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of available TDLib internal log tags.
  class LogTags < Types::Base
    include JSON::Serializable

    # List of log tags
    property tags : ::Array(::String)

    def initialize(@tags : ::Array(::String))
    end
  end
end
