# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a filter for message search results.
  abstract class SearchMessagesFilter < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "searchMessagesFilterEmpty" => Types::SearchMessagesFilter::Empty,
      "searchMessagesFilterAnimation" => Types::SearchMessagesFilter::Animation,
      "searchMessagesFilterAudio" => Types::SearchMessagesFilter::Audio,
      "searchMessagesFilterDocument" => Types::SearchMessagesFilter::Document,
      "searchMessagesFilterPhoto" => Types::SearchMessagesFilter::Photo,
      "searchMessagesFilterVideo" => Types::SearchMessagesFilter::Video,
      "searchMessagesFilterVoiceNote" => Types::SearchMessagesFilter::VoiceNote,
      "searchMessagesFilterPhotoAndVideo" => Types::SearchMessagesFilter::PhotoAndVideo,
      "searchMessagesFilterUrl" => Types::SearchMessagesFilter::Url,
      "searchMessagesFilterChatPhoto" => Types::SearchMessagesFilter::ChatPhoto,
      "searchMessagesFilterCall" => Types::SearchMessagesFilter::Call,
      "searchMessagesFilterMissedCall" => Types::SearchMessagesFilter::MissedCall,
      "searchMessagesFilterVideoNote" => Types::SearchMessagesFilter::VideoNote,
      "searchMessagesFilterVoiceAndVideoNote" => Types::SearchMessagesFilter::VoiceAndVideoNote,
      "searchMessagesFilterMention" => Types::SearchMessagesFilter::Mention,
      "searchMessagesFilterUnreadMention" => Types::SearchMessagesFilter::UnreadMention
    })
  end
end

require "./search_messages_filter/empty"
require "./search_messages_filter/animation"
require "./search_messages_filter/audio"
require "./search_messages_filter/document"
require "./search_messages_filter/photo"
require "./search_messages_filter/video"
require "./search_messages_filter/voice_note"
require "./search_messages_filter/photo_and_video"
require "./search_messages_filter/url"
require "./search_messages_filter/chat_photo"
require "./search_messages_filter/call"
require "./search_messages_filter/missed_call"
require "./search_messages_filter/video_note"
require "./search_messages_filter/voice_and_video_note"
require "./search_messages_filter/mention"
require "./search_messages_filter/unread_mention"
