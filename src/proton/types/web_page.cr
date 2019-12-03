# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a web page preview.
  class WebPage < Types::Base
    include JSON::Serializable

    # Original URL of the link
    property url : ::String

    # Author of the content
    property author : ::String

    # Duration of the content, in seconds
    property duration : ::Int32

    # Height of the embedded preview
    property embed_height : ::Int32

    # Width of the embedded preview
    property embed_width : ::Int32

    # MIME type of the embedded preview, (e.g., text/html or video/mp4)
    property embed_type : ::String

    # URL to show in the embedded preview
    property embed_url : ::String

    # Description of the content
    property description : ::String

    # Title of the content
    property title : ::String

    # Short name of the site (e.g., Google Docs, App Store)
    property site_name : ::String

    # Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else
    property type : ::String

    # URL to display
    property display_url : ::String

    # Version of instant view, available for the web page (currently can be 1 or 2), 0 if none
    property instant_view_version : ::Int32

    # Image representing the content; may be null
    property photo : Proton::Types::Photo? = nil

    # Preview of the content as an animation, if available; may be null
    property animation : Proton::Types::Animation? = nil

    # Preview of the content as an audio file, if available; may be null
    property audio : Proton::Types::Audio? = nil

    # Preview of the content as a document, if available (currently only available for small PDF files and ZIP archives); may be null
    property document : Proton::Types::Document? = nil

    # Preview of the content as a sticker for small WEBP files, if available; may be null
    property sticker : Proton::Types::Sticker? = nil

    # Preview of the content as a video, if available; may be null
    property video : Proton::Types::Video? = nil

    # Preview of the content as a video note, if available; may be null
    property video_note : Proton::Types::VideoNote? = nil

    # Preview of the content as a voice note, if available; may be null
    property voice_note : Proton::Types::VoiceNote? = nil

    def initialize(@url : ::String, @author : ::String, @duration : ::Int32, @embed_height : ::Int32, @embed_width : ::Int32, @embed_type : ::String, @embed_url : ::String, @description : ::String, @title : ::String, @site_name : ::String, @type : ::String, @display_url : ::String, @instant_view_version : ::Int32, @photo : Proton::Types::Photo? = nil, @animation : Proton::Types::Animation? = nil, @audio : Proton::Types::Audio? = nil, @document : Proton::Types::Document? = nil, @sticker : Proton::Types::Sticker? = nil, @video : Proton::Types::Video? = nil, @video_note : Proton::Types::VideoNote? = nil, @voice_note : Proton::Types::VoiceNote? = nil)
    end
  end
end
