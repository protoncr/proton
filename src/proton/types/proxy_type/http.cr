# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A HTTP transparent proxy server.
  class ProxyType::Http < Types::ProxyType
    include JSON::Serializable

    # Pass true, if the proxy supports only HTTP requests and doesn't support transparent TCP connections via HTTP CONNECT method
    property http_only : ::Bool

    # Username for logging in; may be empty
    property username : ::String? = nil

    # Password for logging in; may be empty
    property password : ::String? = nil

    def initialize(@http_only : ::Bool, @username : ::String? = nil, @password : ::String? = nil)
    end
  end
end
