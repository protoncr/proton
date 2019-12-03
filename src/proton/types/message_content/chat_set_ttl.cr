# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The TTL (Time To Live) setting messages in a secret chat has been changed.
  class MessageContent::ChatSetTtl < Types::MessageContent
    include JSON::Serializable

    # New TTL
    property ttl : ::Int32

    def initialize(@ttl : ::Int32)
    end
  end
end
