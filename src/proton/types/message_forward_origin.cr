# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about the origin of a forwarded message.
  abstract class MessageForwardOrigin < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "messageForwardOriginUser" => Types::MessageForwardOrigin::User,
      "messageForwardOriginHiddenUser" => Types::MessageForwardOrigin::HiddenUser,
      "messageForwardOriginChannel" => Types::MessageForwardOrigin::Channel
    })
  end
end

require "./message_forward_origin/user"
require "./message_forward_origin/hidden_user"
require "./message_forward_origin/channel"
