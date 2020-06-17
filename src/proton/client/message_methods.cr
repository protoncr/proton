module Proton
  module MessageMethods
    Log = ::Log.for("proton.message_methods")

    # Send a message to the given `to` user or chat.
    def send_message(to entity,
                     message = nil,
                     parse_mode : ParseMode? = :markdown,
                     reply_message = nil,
                     silent = false,
                     background = false,
                     send_at = nil,
                     send_when_online = false,
                     link_preview = false,
                     file = nil, # TODO
                     force_document = false,
                     clear_draft = true,
                     reply_markup = nil)
      # Reply to message can be either a message id or a TL::Message
      reply_message = reply_message.is_a?(TL::Message) ? reply_message.id! : (reply_message || 0)
      chat = Utils.parse_chat(entity)
      schedule = Utils.parse_send_at(send_at, send_when_online)

      # Create our options and message content
      # TODO: Do some client side validation of the message content
      options = TL::SendMessageOptions.new(silent, background, schedule)


      if message.is_a?(TL::Message)
        message_content = message.content!
      elsif file
        _, input_file, file_type = upload_file(file)
        caption = parse_text_entities(message.to_s, parse_mode) if message
        message_content =
          case file_type
          when TL::FileTypePhoto
            TL::InputMessagePhoto.new(input_file, caption: caption)
          when TL::FileTypeAnimation
            TL::InputMessageAnimation.new(input_file, caption: caption)
          when TL::FileTypeAudio
            TL::InputMessageAudio.new(input_file, caption: caption)
          when TL::FileTypeSticker
            TL::InputMessageSticker.new(input_file)
          when TL::FileTypeVideo
            TL::InputMessageVideo.new(input_file, caption: caption, ttl: 0)
          when TL::FileTypeDocument
            TL::InputMessageDocument.new(input_file, caption: caption)
          when TL::FileTypeVideoNote
            TL::InputMessageVideoNote.new(input_file)
          when TL::FileTypeVoiceNote
            TL::InputMessageVoiceNote.new(input_file, caption: caption)
          else
            raise "Unsupported input file type #{input_file.class}"
          end
      elsif !message.nil?
        formatted_text = parse_text_entities(message.to_s, parse_mode)
        message_content = TL::InputMessageText.new(formatted_text, !link_preview, clear_draft)
      else
        raise "A message is required unless sending a file"
      end

      TL.send_message(chat.id!, reply_message.to_i64, options, message_content, reply_markup)
    end

    def delete_messages(entity,
                        messages,
                        revoke = true)
      chat = Utils.parse_chat(entity) if entity
      message_tuples = [] of Tuple(Int64, Int64)
      messages = messages.is_a?(Array) ? messages : [messages]

      # Create a collection of {chat_id, message_id} pairs
      messages.each do |message|
        case message
        when Int
          # If just an int is provided, this will be assumed to be a message id.
          if chat
            message_tuples << {chat.id!, message}
          else
            # If a chat was not provided, we need to throw an error.
            raise ArgumentError.new("delete_messages requires a chat to be provided if message ids are supplied")
          end
        when Tuple(Int::Primitive, Int::Primitive)
          cid, mid = message
          message_tuples << {cid.to_i64, mid.to_i64}
        when TL::Message
          message_tuples << {message.chat_id!, message.id!}
        else
          raise ArgumentError.new("invalid type #{typeof(message)} in argument `messages`")
        end
      end

      # Group the {chat_id, message_id} pairs into a Hash of chat_id => Array(message_id)
      groups = message_tuples.reduce({} of Int64 => Array(Int64)) do |acc, (cid, mid)|
        acc[cid] ||= [] of Int64
        acc[cid] << mid
        acc
      end

      # Take each grouping and apply the delete operation separately
      groups.each do |cid, mids|
        TL.delete_messages(cid, mids, revoke)
      end
    end

    def delete_message(message, revoke = true)
      delete_messages(nil, [message], revoke)
    end

    def edit_message(message : TL::Message,
                     text,
                     parse_mode : ParseMode? = :markdown,
                     link_preview = false,
                     file = nil, # TODO
                     force_document = false,
                     send_at = nil,
                     send_when_online = false,
                     clear_draft = true,
                     reply_markup = nil)
      formatted_text = parse_text_entities(text, parse_mode)
      message_content = TL::InputMessageText.new(formatted_text, !link_preview, clear_draft)

      TL.edit_message_text(message.chat_id!, message.id!, message_content, reply_markup)
    end

    def edit_message(entity,
                     message,
                     text,
                     parse_mode : ParseMode? = :markdown,
                     link_preview = false,
                     file = nil, # TODO
                     force_document = false,
                     send_at = nil,
                     send_when_online = false,
                     clear_draft = true,
                     reply_markup = nil)
      chat = Utils.parse_chat(entity)
      message_id = message.is_a?(TL::Message) ? message.id! : message.to_i64

      formatted_text = parse_text_entities(text, parse_mode)
      message_content = TL::InputMessageText.new(formatted_text, !link_preview, clear_draft)

      TL.edit_message_text(chat.id!, message_id, message_content, reply_markup)
    end


    # Forward previously sent messages and returns the forwarded messages in the same order as the
    # messages were sent.
    def forward_messages(to to_entity,
                         messages,
                         from from_entity = nil,
                         silent = false,
                         background = false,
                         as_album = false,
                         send_copy = false,
                         remove_caption = false,
                         send_at = nil,
                         send_when_online = false)
      to_chat = Utils.parse_chat(to_entity)
      from_chat = Utils.parse_chat(from_entity) if from_entity
      messages = messages.is_a?(Array) ? messages : [messages]

      # Create a collection of {to_chat, from_chat, message_id} pairs
      message_tuples = messages.reduce([] of Tuple(Int64, Int64)) do |acc, message|
        case message
        when Int
          # If just an int is provided, this will be assumed to be a message id.
          if from_chat
            acc << {from_chat.id!, message}
          else
            # If to and from weren't provided, we need to throw an error.
            raise ArgumentError.new("a `from` param must be provided if message ids are supplied")
          end
        when Tuple(Int::Primitive, Int::Primitive)
          fid, msg = message
          case msg
          when Int
            acc << {fid.to_i64, msg.to_i64}
          when TL::Message
            acc << {fid.to_i64, msg.id}
          else
            raise ArgumentError.new("invalid type #{typeof(msg)} for index 1 in argument `messages`")
          end
        when TL::Message
          acc << {message.chat_id!, message.id!}
        else
          raise ArgumentError.new("invalid type #{typeof(message)} in argument `messages`")
        end

        acc
      end

      schedule = Utils.parse_send_at(send_at, send_when_online)
      options = TL::SendMessageOptions.new(silent, background, schedule)

      # Group the {from_chat, message_id} pairs into a Hash of from_chat => Array(message_id)
      groups = message_tuples.reduce({} of Int64 => Array(Int64)) do |acc, (fid, mid)|
        acc[fid] ||= [] of Int64
        acc[fid] << mid
        acc
      end

      # Take each grouping and apply the delete operation separately
      groups.reduce([] of TL::Message) do |acc, (fid, mids)|
        results = TL.forward_messages(to_chat.id!, fid, mids, options, as_album, send_copy, remove_caption)
        acc.concat(results.messages!)
      end
    end

    # def each_message(entity, **options)
    #   chat = Utils.parse_chat(entity)
    #   MessageIterator.new(entity, **options)
    # end

    # def each_message(entity, **options, &block : TL::Message ->)
    #   iter = each_message(entity, **options)
    #   iter.each(&block)
    # end

    def pin_message(entity, message, silent = true)
      chat = Utils.parse_chat(entity)
      message_id = message.is_a?(TL::Message) ? message.id! : message.to_i64
      TL.pin_chat_message(chat.id!, message_id, !silent)
    end

    def send_read_acknowledge(entity, message = nil, last_message = nil)
      chat = Utils.parse_chat(entity)
      last_message = last_message.is_a?(TL::Message) ? last_message.id! : last_message

      # Open the chat so we can act on it
      TL.open_chat(chat.id!)

      # Get the chat item
      chat = TL.get_chat(chat.id!)

      # Get the id of the last read message, and the last message
      from_message_id = chat.last_read_inbox_message_id!

      to_message_id = chat.last_message.try &.id! || 0
      to_message_id = last_message ? Math.min(to_message_id, last_message) : to_message_id

      # No last message means nothing to do
      return if to_message_id = 0

      messages_to_read = (from_message_id..to_message_id).to_a
      TL.view_messages(chat.id!, messages_to_read, false)
    end

    def parse_text_entities(text, parse_mode : ParseMode? = nil)
      if parse_mode
        parse_mode = parse_mode.to_tl
        TL.parse_text_entities(text, parse_mode)
      else
        TL::FormattedText.new(text, [] of TL::TextEntity)
      end
    end
  end
end
