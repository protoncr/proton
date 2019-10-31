# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a URL linking to an internal Telegram entity.
  # url [::String] URL.
  # type [Proton::Types::TMeUrlType] Type of the URL.
  class TMeUrl < Types::Base
    property url : ::String
    property type : Proton::Types::TMeUrlType

    def initialize(@url : ::String, @type : Proton::Types::TMeUrlType)
    end
  end
end

