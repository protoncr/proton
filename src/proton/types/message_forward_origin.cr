# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about the origin of a forwarded message.
  class MessageForwardOrigin < Types::Base

    def initialize()
    end
  end
end

require "./message_forward_origin/user"
require "./message_forward_origin/hidden_user"
require "./message_forward_origin/channel"