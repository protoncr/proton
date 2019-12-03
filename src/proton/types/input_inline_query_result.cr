# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a single result of an inline query; for bots only.
  abstract class InputInlineQueryResult < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "inputInlineQueryResultAnimatedGif" => Types::InputInlineQueryResult::AnimatedGif,
      "inputInlineQueryResultAnimatedMpeg4" => Types::InputInlineQueryResult::AnimatedMpeg4,
      "inputInlineQueryResultArticle" => Types::InputInlineQueryResult::Article,
      "inputInlineQueryResultAudio" => Types::InputInlineQueryResult::Audio,
      "inputInlineQueryResultContact" => Types::InputInlineQueryResult::Contact,
      "inputInlineQueryResultDocument" => Types::InputInlineQueryResult::Document,
      "inputInlineQueryResultGame" => Types::InputInlineQueryResult::Game,
      "inputInlineQueryResultLocation" => Types::InputInlineQueryResult::Location,
      "inputInlineQueryResultPhoto" => Types::InputInlineQueryResult::Photo,
      "inputInlineQueryResultSticker" => Types::InputInlineQueryResult::Sticker,
      "inputInlineQueryResultVenue" => Types::InputInlineQueryResult::Venue,
      "inputInlineQueryResultVideo" => Types::InputInlineQueryResult::Video,
      "inputInlineQueryResultVoiceNote" => Types::InputInlineQueryResult::VoiceNote
    })
  end
end

require "./input_inline_query_result/animated_gif"
require "./input_inline_query_result/animated_mpeg4"
require "./input_inline_query_result/article"
require "./input_inline_query_result/audio"
require "./input_inline_query_result/contact"
require "./input_inline_query_result/document"
require "./input_inline_query_result/game"
require "./input_inline_query_result/location"
require "./input_inline_query_result/photo"
require "./input_inline_query_result/sticker"
require "./input_inline_query_result/venue"
require "./input_inline_query_result/video"
require "./input_inline_query_result/voice_note"
