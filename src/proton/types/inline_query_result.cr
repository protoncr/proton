# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a single result of an inline query.
  abstract class InlineQueryResult < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "inlineQueryResultArticle" => Types::InlineQueryResult::Article,
      "inlineQueryResultContact" => Types::InlineQueryResult::Contact,
      "inlineQueryResultLocation" => Types::InlineQueryResult::Location,
      "inlineQueryResultVenue" => Types::InlineQueryResult::Venue,
      "inlineQueryResultGame" => Types::InlineQueryResult::Game,
      "inlineQueryResultAnimation" => Types::InlineQueryResult::Animation,
      "inlineQueryResultAudio" => Types::InlineQueryResult::Audio,
      "inlineQueryResultDocument" => Types::InlineQueryResult::Document,
      "inlineQueryResultPhoto" => Types::InlineQueryResult::Photo,
      "inlineQueryResultSticker" => Types::InlineQueryResult::Sticker,
      "inlineQueryResultVideo" => Types::InlineQueryResult::Video,
      "inlineQueryResultVoiceNote" => Types::InlineQueryResult::VoiceNote
    })
  end
end

require "./inline_query_result/article"
require "./inline_query_result/contact"
require "./inline_query_result/location"
require "./inline_query_result/venue"
require "./inline_query_result/game"
require "./inline_query_result/animation"
require "./inline_query_result/audio"
require "./inline_query_result/document"
require "./inline_query_result/photo"
require "./inline_query_result/sticker"
require "./inline_query_result/video"
require "./inline_query_result/voice_note"
