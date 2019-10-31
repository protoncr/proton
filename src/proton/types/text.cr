# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains some text.
  # text [::String] Text.
  class Text < Types::Base
    property text : ::String

    def initialize(@text : ::String)
    end
  end
end

