# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains some text.
  class Text < Types::Base
    include JSON::Serializable

    # Text
    property text : ::String

    def initialize(@text : ::String)
    end
  end
end
