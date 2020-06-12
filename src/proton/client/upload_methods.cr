module Proton
  module UploadMethods
    def send_file(to entity,
                  file,
                  caption = nil,
                  force_document = false,
                  clear_draft = false,
                  progress_callback = nil,
                  reply_to = nil,
                  attributes = nil,
                  thumb = nil,
                  parse_mode : ParseMode = :markdown,
                  voice_note = false,
                  video_note = false,
                  reply_markup = nil,
                  silent = false,
                  supports_streaming = false,
                  sent_at = nil,
                  send_when_online = false)
    end
  end
end
