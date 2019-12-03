# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains an HTTP URL.
  class HttpUrl < Types::Base
    include JSON::Serializable

    # The URL
    property url : ::String

    def initialize(@url : ::String)
    end
  end
end
