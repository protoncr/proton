# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a list of proxy servers.
  class Proxies < Types::Base
    include JSON::Serializable

    # List of proxy servers
    property proxies : ::Array(Proton::Types::Proxy)

    def initialize(@proxies : ::Array(Proton::Types::Proxy))
    end
  end
end
