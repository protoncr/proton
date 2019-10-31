# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A HTTP transparent proxy server.
  # username [::String, nil] Username for logging in; may be empty.
  # password [::String, nil] Password for logging in; may be empty.
  # http_only [::Bool] Pass true, if the proxy supports only HTTP requests and doesn't support transparent TCP
  #   connections via HTTP CONNECT method.
  class ProxyType::Http < Types::ProxyType
    property username : ::String?
    property password : ::String?
    property http_only : ::Bool

    def initialize(@http_only : ::Bool, @username : ::String? = nil, @password : ::String? = nil)
    end
  end
end

