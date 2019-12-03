# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the type of a chat.
  abstract class ChatType < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "chatTypePrivate" => Types::ChatType::Private,
      "chatTypeBasicGroup" => Types::ChatType::BasicGroup,
      "chatTypeSupergroup" => Types::ChatType::Supergroup,
      "chatTypeSecret" => Types::ChatType::Secret
    })
  end
end

require "./chat_type/private"
require "./chat_type/basic_group"
require "./chat_type/supergroup"
require "./chat_type/secret"
