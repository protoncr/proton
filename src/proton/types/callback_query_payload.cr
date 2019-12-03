# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a payload of a callback query.
  abstract class CallbackQueryPayload < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "callbackQueryPayloadData" => Types::CallbackQueryPayload::Data,
      "callbackQueryPayloadGame" => Types::CallbackQueryPayload::Game
    })
  end
end

require "./callback_query_payload/data"
require "./callback_query_payload/game"
