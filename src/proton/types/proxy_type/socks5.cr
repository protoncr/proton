# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A SOCKS5 proxy server.
  # username [::String, nil] Username for logging in; may be empty.
  # password [::String, nil] Password for logging in; may be empty.
  class ProxyType::Socks5 < Types::ProxyType
    property username : ::String?
    property password : ::String?

    def initialize(@username : ::String? = nil, @password : ::String? = nil)
    end
  end
end

