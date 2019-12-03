# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A SOCKS5 proxy server.
  class ProxyType::Socks5 < Types::ProxyType
    include JSON::Serializable

    # Username for logging in; may be empty
    property username : ::String? = nil

    # Password for logging in; may be empty
    property password : ::String? = nil

    def initialize(@username : ::String? = nil, @password : ::String? = nil)
    end
  end
end
