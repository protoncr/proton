module Proton
  module UploadMethods
    def upload_file(file,
                    type = nil,
                    priority = 1,
                    video_note = false,
                    voice_note = false,
                    force_document = false)
      if file.is_a?(TL::File)
        return file
      end

      # First we need to check the input file type
      input_file =
        case file
        when Int
          TL::InputFileId.new(file.to_i)
        when String
          if file.match(/https?:\/\//)
            # Looks like a URL
            ext = File.extname(file)
            localfile = File.tempfile(suffix: ext) do |f|
              response = HTTP::Client.get(file)
              f << response.body
            end
            TL::InputFileLocal.new(File.real_path(localfile.path))
          elsif file.includes?("/") || file.match(/\.[a-z0-9_\-]$/)
            # Looks like a local path
            TL::InputFileLocal.new(file)
          else
            # Probably a remote file ID
            TL::InputFileRemote.new(file)
          end
        when File
          raise "A file with an empty path cannot be sent" if file.path.empty?
          TL::InputFileLocal.new(file.real_path)
        when IO
          newfile = File.tempfile do |tmp|
            tmp << file
          end
          TL::InputFileLocal.new(File.real_path(newfile.path))
        when TL::InputFile
          file
        else
          raise "Unknown input file type #{typeof(file)}"
        end

      if !type
        type = Utils.guess_mime_type(file)
      end

      # Then we need to check the type of the file
      file_type =
        if force_document
          TL::FileTypeDocument.new
        elsif video_note
          TL::FileTypeVideoNote.new
        elsif voice_note
          TL::FileTypeVoiceNote.new
        else
          case type
          when TL::FileType
            type
          else
            case type.to_s
            when /image|photo/
              TL::FileTypePhoto.new
            when /animation|gif/
              TL::FileTypeAnimation.new
            when /audio/
              TL::FileTypeAudio.new
            when /sticker|webp/
              TL::FileTypeSticker.new
            when /video/
              TL::FileTypeVideo.new
            else
              TL::FileTypeDocument.new
            end
          end
        end

      # Priority has to be between 1 and 32
      priority = priority.clamp(1, 32)

      # Now to upload it
      uploaded = TL.upload_file(input_file, file_type, priority)

      # Return a tuple of {file, input_file, file_type}
      {uploaded, input_file, file_type}
    end
  end
end
