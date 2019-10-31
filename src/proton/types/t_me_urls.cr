# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of t.me URLs.
  # urls [::Array(Proton::Types::TMeUrl)] List of URLs.
  class TMeUrls < Types::Base
    property urls : ::Array(Proton::Types::TMeUrl)

    def initialize(@urls : ::Array(Proton::Types::TMeUrl))
    end
  end
end

