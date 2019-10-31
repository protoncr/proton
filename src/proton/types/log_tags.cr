# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of available TDLib internal log tags.
  # tags [::Array(::String)] List of log tags.
  class LogTags < Types::Base
    property tags : ::Array(::String)

    def initialize(@tags : ::Array(::String))
    end
  end
end

