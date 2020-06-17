require "mime"
require "magic"

require "./utils/*"

# Register some of the most common mime-types to avoid any issues.
MIME.register(".png", "image/png")
MIME.register(".jpeg", "image/jpeg")
MIME.register(".webp", "image/webp")
MIME.register(".gif", "image/gif")
MIME.register(".bmp", "image/bmp")
MIME.register(".tga", "image/x-tga")
MIME.register(".tiff", "image/tiff")
MIME.register(".psd", "image/vnd.adobe.photoshop")

MIME.register(".mp4", "video/mp4")
MIME.register(".mov", "video/quicktime")
MIME.register(".avi", "video/avi")

MIME.register(".mp3", "audio/mpeg")
MIME.register(".m4a", "audio/m4a")
MIME.register(".aac", "audio/aac")
MIME.register(".ogg", "audio/ogg")
MIME.register(".flac", "audio/flac")

MIME.register(".tgs", "application/x-tgsticker")

module Proton
  module Utils
    extend self

    USERNAME_RE = /@|(?:https?:\/\/)?(?:www\.)?(?:telegram\.(?:me|dog)|t\.me)\/(@|joinchat\/)?/
    TG_JOIN_RE = /tg:\/\/(join)\?invite=/

    # The only shorter-than-five-characters usernames are those used for some
    # special, very well known bots. This list may be incomplete though:
    #    "[...] @gif, @vid, @pic, @bing, @wiki, @imdb and @bold [...]"
    #
    # See https://telegram.org/blog/inline-bots#how-does-it-work
    VALID_USERNAME_RE = Regex.new(
      "^([a-z](?:(?!__)\\w){3,30}[a-z\\d]" \
      "|gif|vid|pic|bing|wiki|imdb|bold|vote|like|coub)$",
      Regex::Options::IGNORE_CASE
    )

    MD_ENTITY_MAP = {
      TL::TextEntityTypeBold => {"*", "*"},
      TL::TextEntityTypeItalic => {"_", "_"},
      TL::TextEntityTypeUnderline => {"", ""},
      TL::TextEntityTypeCode => {"`", "`"},
      TL::TextEntityTypePre => {"```\n", "\n```"},
      TL::TextEntityTypePreCode => {"```{language}\n", "\n```"},
      TL::TextEntityTypeStrikethrough => {"", ""},
      TL::TextEntityTypeMentionName => {"[", "](tg://user?id={id})"},
      TL::TextEntityTypeTextUrl => {"[", "]({url})"}
    }

    MDV2_ENTITY_MAP = {
      TL::TextEntityTypeBold => {"*", "*"},
      TL::TextEntityTypeItalic => {"_", "_"},
      TL::TextEntityTypeUnderline => {"__", "__"},
      TL::TextEntityTypeCode => {"`", "`"},
      TL::TextEntityTypePre => {"```\n", "\n```"},
      TL::TextEntityTypePreCode => {"```{language}\n", "\n```"},
      TL::TextEntityTypeStrikethrough => {"~", "~"},
      TL::TextEntityTypeMentionName => {"[", "](tg://user?id={id})"},
      TL::TextEntityTypeTextUrl => {"[", "]({url})"}
    }

    HTML_ENTITY_MAP = {
      TL::TextEntityTypeBold => {"<b>", "</b>"},
      TL::TextEntityTypeItalic => {"<i>", "</i>"},
      TL::TextEntityTypeUnderline => {"<u>", "</u>"},
      TL::TextEntityTypeCode => {"<code>", "</code>"},
      TL::TextEntityTypePre => {"<pre>\n", "\n</pre>"},
      TL::TextEntityTypePreCode => {"<pre><code class=\"language-{language}\">\n", "\n</code></pre>"},
      TL::TextEntityTypeStrikethrough => {"<s>", "</s>"},
      TL::TextEntityTypeMentionName => {"<a href=\"tg://user?id={id}\">", "</a>"},
      TL::TextEntityTypeTextUrl => {"<a href=\"{url}\">", "</a>"}
    }

    class_getter my_id : Int32 { TL.get_me.id! }

    def unparse_text(text : String, entities ents : Array(TL::TextEntity), parse_mode : ParseMode = :markdown)
      start_entities = ents.reduce({} of Int32 => TL::TextEntity) { |acc, e| acc[e.offset!] = e; acc }
      end_entities   = ents.reduce({} of Int32 => TL::TextEntity) { |acc, e| acc[e.offset! + e.length!] = e; acc }

      chars = text.chars
      chars << ' ' # The last entity doesn't complete without this

      entity_map = case parse_mode
      when ParseMode::Markdown
        MD_ENTITY_MAP
      when ParseMode::MarkdownV2
        MDV2_ENTITY_MAP
      when ParseMode::HTML
        HTML_ENTITY_MAP
      else
        raise "Unreachable"
      end

      String.build do |str|
        idx = 0
        chars.each do |char|
          if (entity = start_entities[idx]?.try &.type!) && (pieces = entity_map[entity.class]?)
            str << format_entity_chunk(pieces[0], entity)
          elsif (entity = end_entities[idx]?.try &.type!) && (pieces = entity_map[entity.class]?)
            str << format_entity_chunk(pieces[1], entity)
          end
          str << char
          idx += char.bytesize >= 4 ? 2 : 1
        end
      end
    end

    def guess_mime_type(file)
      case file
      when String
        MIME.from_extension(Path[file].extension)
      when Path
        MIME.from_extension(file.extension)
      when Bytes
        Magic.mime_type.of(IO::Memory.new(file))
      when IO
        Magic.mime_type.of(file)
      when TL::Photo
        "image/jpeg"
      when .responds_to?(:mime_type)
        file.mime_type
      else
        raise "Unsupported file type for #{file}. Unable to guess mime type."
      end
    end

    def image?(file)
      mime = guess_mime_type(file)
      mime.starts_with?("image")
    end

    def gif?(file)
      mime = guess_mime_type(file)
      mime.ends_with?("gif")
    end

    def audio?(file)
      mime = guess_mime_type(file)
      mime.starts_with?("audio")
    end

    def video?(file)
      mime = guess_mime_type(file)
      mime.starts_with?("video")
    end

    def parse_phone(phone)
      if phone.is_a?(Int)
        phone.to_s
      else
        phone = phone.replace(/[+()\s-]/, "")
        if phone.to_i?
          phone
        end
      end
    end

    # Parses the given username or channel access hash, given
    # a string, username or URL. Returns a tuple consisting of
    # both the stripped, lowercase username and whether it is
    # a joinchat/ hash (in which case is not lowercase'd).
    def parse_username(username)
      username = username.strip
      if match = USERNAME_RE.match(username) || TG_JOIN_RE.match(username)
        username = username
      end
    end

    def escape_md(text, version = 1)
      text = text.to_s

      case version
      when 0, 1
        chars = ['_', '*', '[', '`']
      when 2
        chars = ['_', '*', '[', ']', '(', ')', '~', '`', '>', '#', '+', '-', '=', '|', '{', '}', '.', '!']
      else
        raise "Invalid version #{version} for `escape_md`"
      end

      chars.each do |char|
        text = text.gsub(char, "\\#{char}")
      end

      text
    end

    def parse_entities(text, parse_mode : ParseMode = :markdown)
      parser = EntityParser.new(parse_mode)
      parser.parse(text)
    end

    def parse_chat(chat)
      case chat
      when "me", "self", :me, :self
        # Make it easy to send messages to yourself using "me" and "self"
        TL.get_chat(my_id.to_i64)
      when TL::Chat
        chat
      when TL::User
        # Allow passing a chat or user in directly
        TL.get_chat(chat.id.to_i64)
      when Int
        # Also allow passing an id in directly
        TL.get_chat(chat)
      when String
        uname = chat.lstrip("@")
        TL.search_public_chat(uname)
      else
        raise ArgumentError.new("invalid type #{typeof(chat)} for property `chat`")
      end
    end

    def parse_user(user)
      case user
      when "me", "self", :me, :self
        TL.get_user(my_id.to_i32)
      when TL::User
        user
      when TL::Chat
        TL.get_user(user.id!.to_i32)
      when Int
        TL.get_user(user.to_i32)
      when String
        uname = chat.lstrip("@")
        chat = TL.search_public_chat(uname)
        TL.get_user(chat.id!.to_i32)
      else
        raise ArgumentError.new("invalid type #{typeof(user)} for property `user`")
      end
    end

    def parse_send_at(send_at, send_when_online)
      # Warn if send_at and send_when_online are provided
      if send_at && send_when_online
        Log.warn do
          "both send_at and send_when_online supplied to send_message call. " \
          "using send_at value."
        end
      end

      if send_at.is_a?(Int)
        # If send_at is an Int value it should represent an epoch time
        TL::MessageSchedulingStateSendAtDate.new(send_at)
      elsif send_at.is_a?(Time)
        # If send_at is a Time we convert it to a unix time stamp
        TL::MessageSchedulingStateSendAtDate.new(send_at.to_unix.to_i32)
      elsif send_at.is_a?(Time::Span)
        # If send_at is a Time::Span we need to get the current time, and add the time span to it
        TL::MessageSchedulingStateSendAtDate.new(Time.utc.to_unix.to_i32 + send_at.total_seconds)
      elsif send_when_online
        # Otherwise check for send_when_online and use that
        TL::MessageSchedulingStateSendWhenOnline.new
      end
    end

    private def format_entity_chunk(chunk, entity)
      case entity
      when TL::TextEntityTypePreCode
        chunk = chunk.sub("{language}", entity.language!)
      when TL::TextEntityTypeMentionName
        chunk = chunk.sub("{id}", entity.user_id!)
      when TL::TextEntityTypeTextUrl
        chunk = chunk.sub("{url}", entity.url!)
      end
      chunk
    end
  end
end
