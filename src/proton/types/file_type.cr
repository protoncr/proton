# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the type of a file.
  abstract class FileType < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "fileTypeNone" => Types::FileType::None,
      "fileTypeAnimation" => Types::FileType::Animation,
      "fileTypeAudio" => Types::FileType::Audio,
      "fileTypeDocument" => Types::FileType::Document,
      "fileTypePhoto" => Types::FileType::Photo,
      "fileTypeProfilePhoto" => Types::FileType::ProfilePhoto,
      "fileTypeSecret" => Types::FileType::Secret,
      "fileTypeSecretThumbnail" => Types::FileType::SecretThumbnail,
      "fileTypeSecure" => Types::FileType::Secure,
      "fileTypeSticker" => Types::FileType::Sticker,
      "fileTypeThumbnail" => Types::FileType::Thumbnail,
      "fileTypeUnknown" => Types::FileType::Unknown,
      "fileTypeVideo" => Types::FileType::Video,
      "fileTypeVideoNote" => Types::FileType::VideoNote,
      "fileTypeVoiceNote" => Types::FileType::VoiceNote,
      "fileTypeWallpaper" => Types::FileType::Wallpaper
    })
  end
end

require "./file_type/none"
require "./file_type/animation"
require "./file_type/audio"
require "./file_type/document"
require "./file_type/photo"
require "./file_type/profile_photo"
require "./file_type/secret"
require "./file_type/secret_thumbnail"
require "./file_type/secure"
require "./file_type/sticker"
require "./file_type/thumbnail"
require "./file_type/unknown"
require "./file_type/video"
require "./file_type/video_note"
require "./file_type/voice_note"
require "./file_type/wallpaper"
