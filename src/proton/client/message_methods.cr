module Proton
  module MessageMethods
    Log = ::Log.for("proton.message_methods")

    # Send a message to the given `to` user or chat.
    def send_message(to chat,
                     message,
                     parse_mode : ParseMode = :markdown,
                     reply_to_message = nil,
                     silent = false,
                     background = false,
                     send_at = nil,
                     send_when_online = false,
                     link_preview = false,
                     file = nil, # TODO
                     force_document = false,
                     clear_draft = true,
                     reply_markup = nil)
      parse_mode = parse_mode.to_tl

      # Reply to message can be either a message id or a TL::Message
      reply_to_message = reply_to_message.is_a?(TL::Message) ? reply_to_message.id : (reply_to_message || 0)
      chat_id = parse_chat(chat)
      schedule = parse_send_at(send_at, send_when_online)

      # Create our options and message content
      # TODO: Do some client side validation of the message content
      options = TL::SendMessageOptions.new(silent, background, schedule)

      if message.is_a?(TL::Message)
        message_content = message.content
      else
        formatted_text = TL.parse_text_entities(text, parse_mode)
        message_content = TL::InputMessageText.new(formatted_text, !link_preview, clear_draft)
      end

      TL.send_message(chat_id, reply_to_message.to_i64, options, message_content, reply_markup)
    end

    def delete_messages(chat,
                        messages,
                        revoke = true)
      chat_id = parse_chat(chat) if chat
      message_tuples = [] of Tuple(Int64, Int64)

      # Create a collection of {chat_id, message_id} pairs
      messages.each do |message|
        case message
        when Int
          # If just an int is provided, this will be assumed to be a message id.
          if chat_id
            message_tuples << {chat_id, message}
          else
            # If a chat was not provided, we need to throw an error.
            raise ArgumentError.new("delete_messages requires a chat to be provided if message ids are supplied")
          end
        when Tuple(Int::Primitive, Int::Primitive)
          cid, mid = message
          message_tuples << {cid.to_i64, mid.to_i64}
        when TL::Message
          message_tuples << {message.chat_id, message.id}
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

    def edit_message(message : TL::Message,
                     text,
                     parse_mode : ParseMode = :markdown,
                     link_preview = false,
                     file = nil, # TODO
                     force_document = false,
                     send_at = nil,
                     send_when_online = false,
                     clear_draft = true,
                     reply_markup = nil)
      parse_mode = parse_mode.to_tl
      formatted_text = TL.parse_text_entities(text, parse_mode)
      message_content = TL::InputMessageText.new(formatted_text, !link_preview, clear_draft)

      TL.edit_message_text(message.chat_id, message.id, message_content, reply_markup)
    end

    def edit_message(chat,
                     message,
                     text,
                     parse_mode : ParseMode = :markdown,
                     link_preview = false,
                     file = nil, # TODO
                     force_document = false,
                     send_at = nil,
                     send_when_online = false,
                     clear_draft = true,
                     reply_markup = nil)
      chat_id = chat.is_a?(TL::Chat) ? chat.id : chat.to_i64
      message_id = message.is_a?(TL::Message) ? message.id : message.to_i64

      parse_mode = parse_mode.to_tl
      formatted_text = TL.parse_text_entities(text, parse_mode)
      message_content = TL::InputMessageText.new(formatted_text, !link_preview, clear_draft)

      TL.edit_message_text(chat_id, message_id, message_content, reply_markup)
    end

    def forward_messages(to to_chat,
                         messages,
                         from from_chat = nil,
                         silent = false,
                         background = false,
                         as_album = false,
                         send_copy = false,
                         remove_caption = false,
                         send_at = nil,
                         send_when_online = false)
      to_id = parse_chat(to_chat)
      from_id = parse_chat(from_chat) if from_chat

      # Create a collection of {to_chat, from_chat, message_id} pairs
      message_tuples = messages.reduce([] of Tuple(Int64, Int64)) do |acc, message|
        case message
        when Int
          # If just an int is provided, this will be assumed to be a message id.
          if from_id
            acc << {from_id, message}
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
          acc << {message.chat.id, message.id}
        else
          raise ArgumentError.new("invalid type #{typeof(message)} in argument `messages`")
        end

        acc
      end

      schedule = parse_send_at(send_at, send_when_online)
      options = TL::SendMessageOptions.new(silent, background, schedule)

      # Group the {from_chat, message_id} pairs into a Hash of from_chat => Array(message_id)
      groups = message_tuples.reduce({} of Int64 => Array(Int64)) do |acc, (fid, mid)|
        acc[fid] ||= [] of Int64
        acc[fid] << mid
        acc
      end

      # Take each grouping and apply the delete operation separately
      groups.each do |fid, mids|
        TL.forward_messages(to_id, fid, mids, options, as_album, send_copy, remove_caption)
      end
    end

    def pin_message(chat,
                    message,
                    silent = true)
      chat_id = parse_chat(chat)
      message_id = message.is_a?(TL::Message) ? message.id : message.to_i64
      TL.pin_chat_message(chat_id, message_id, !silent)
    end

    private def parse_chat(chat)
      case chat
      when "me", "self", :me, :self
        # Make it easy to send messages to yourself using "me" and "self"
        my_id.to_i64
      when TL::User, TL::Chat
        # Allow passing a chat or user in directly
        chat.id
      when Int
        # Also allow passing an id in directly
        chat.to_i64
      else
        raise ArgumentError.new("invalid type #{typeof(chat)} for property `to`")
      end
    end

    private def parse_send_at(send_at, send_when_online)
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
  end
end
