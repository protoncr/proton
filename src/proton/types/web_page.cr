# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a web page preview.
  # url [::String] Original URL of the link.
  # display_url [::String] URL to display.
  # type [::String] Type of the web page.
  #   Can be: article, photo, audio, video, document, profile, app, or something else.
  # site_name [::String] Short name of the site (e.g., Google Docs, App Store).
  # title [::String] Title of the content.
  # description [::String] Description of the content.
  # photo [Proton::Types::Photo, nil] Image representing the content; may be null.
  # embed_url [::String] URL to show in the embedded preview.
  # embed_type [::String] MIME type of the embedded preview, (e.g., text/html or video/mp4).
  # embed_width [::Int32] Width of the embedded preview.
  # embed_height [::Int32] Height of the embedded preview.
  # duration [::Int32] Duration of the content, in seconds.
  # author [::String] Author of the content.
  # animation [Proton::Types::Animation, nil] Preview of the content as an animation, if available; may be null.
  # audio [Proton::Types::Audio, nil] Preview of the content as an audio file, if available; may be null.
  # document [Proton::Types::Document, nil] Preview of the content as a document, if available (currently only
  #   available for small PDF files and ZIP archives); may be null.
  # sticker [Proton::Types::Sticker, nil] Preview of the content as a sticker for small WEBP files, if available; may
  #   be null.
  # video [Proton::Types::Video, nil] Preview of the content as a video, if available; may be null.
  # video_note [Proton::Types::VideoNote, nil] Preview of the content as a video note, if available; may be null.
  # voice_note [Proton::Types::VoiceNote, nil] Preview of the content as a voice note, if available; may be null.
  # instant_view_version [::Int32] Version of instant view, available for the web page (currently can be 1 or 2), 0 if
  #   none.
  class WebPage < Types::Base
    property url : ::String
    property display_url : ::String
    property type : ::String
    property site_name : ::String
    property title : ::String
    property description : ::String
    property photo : Proton::Types::Photo?
    property embed_url : ::String
    property embed_type : ::String
    property embed_width : ::Int32
    property embed_height : ::Int32
    property duration : ::Int32
    property author : ::String
    property animation : Proton::Types::Animation?
    property audio : Proton::Types::Audio?
    property document : Proton::Types::Document?
    property sticker : Proton::Types::Sticker?
    property video : Proton::Types::Video?
    property video_note : Proton::Types::VideoNote?
    property voice_note : Proton::Types::VoiceNote?
    property instant_view_version : ::Int32

    def initialize(@url : ::String, @author : ::String, @duration : ::Int32, @embed_height : ::Int32, @embed_width : ::Int32, @embed_type : ::String, @embed_url : ::String, @description : ::String, @title : ::String, @site_name : ::String, @type : ::String, @display_url : ::String, @instant_view_version : ::Int32, @photo : Proton::Types::Photo? = nil, @animation : Proton::Types::Animation? = nil, @audio : Proton::Types::Audio? = nil, @document : Proton::Types::Document? = nil, @sticker : Proton::Types::Sticker? = nil, @video : Proton::Types::Video? = nil, @video_note : Proton::Types::VideoNote? = nil, @voice_note : Proton::Types::VoiceNote? = nil)
    end
  end
end

