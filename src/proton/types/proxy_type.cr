# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the type of the proxy server.
  abstract class ProxyType < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "proxyTypeSocks5" => Types::ProxyType::Socks5,
      "proxyTypeHttp" => Types::ProxyType::Http,
      "proxyTypeMtproto" => Types::ProxyType::Mtproto
    })
  end
end

require "./proxy_type/socks5"
require "./proxy_type/http"
require "./proxy_type/mtproto"
