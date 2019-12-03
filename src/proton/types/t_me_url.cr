# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a URL linking to an internal Telegram entity.
  class TMeUrl < Types::Base
    include JSON::Serializable

    # URL
    property url : ::String

    # Type of the URL
    property type : Proton::Types::TMeUrlType

    def initialize(@url : ::String, @type : Proton::Types::TMeUrlType)
    end
  end
end
