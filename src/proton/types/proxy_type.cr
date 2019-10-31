# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the type of the proxy server.
  class ProxyType < Types::Base

    def initialize()
    end
  end
end

require "./proxy_type/socks5"
  require "./proxy_type/http"
  require "./proxy_type/mtproto"