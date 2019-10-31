# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains an HTTP URL.
  # url [::String] The URL.
  class HttpUrl < Types::Base
    property url : ::String

    def initialize(@url : ::String)
    end
  end
end

