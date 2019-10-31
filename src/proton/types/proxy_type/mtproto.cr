# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An MTProto proxy server.
  # secret [::String] The proxy's secret in hexadecimal encoding.
  class ProxyType::Mtproto < Types::ProxyType
    property secret : ::String

    def initialize(@secret : ::String)
    end
  end
end

