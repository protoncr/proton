# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a list of proxy servers.
  # proxies [::Array(Proton::Types::Proxy)] List of proxy servers.
  class Proxies < Types::Base
    property proxies : ::Array(Proton::Types::Proxy)

    def initialize(@proxies : ::Array(Proton::Types::Proxy))
    end
  end
end

