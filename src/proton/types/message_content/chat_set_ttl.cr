# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The TTL (Time To Live) setting messages in a secret chat has been changed.
  # ttl [::Int32] New TTL.
  class MessageContent::ChatSetTtl < Types::MessageContent
    property ttl : ::Int32

    def initialize(@ttl : ::Int32)
    end
  end
end

