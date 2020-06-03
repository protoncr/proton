module Proton
  module MessageMethods
    def send_message(chat_id,
                     text,
                     parse_mode : ParseMode = :markdown,
                     reply_to_message = nil,
                     disable_notification = false,
                     background = false,
                     send_at = false,
                     disable_web_page_preview = false,
                     clear_draft = true)
      parse_mode = parse_mode.to_tl
      formatted_text = TL.parse_text_entities(text, parse_mode)
      reply_to_message = reply_to_message.is_a?(TL::Message) ? reply_to_message.id : reply_to_message || 0

      if send_at.is_a?(Int)
        schedule = TL::MessageSchedulingStateSendAtDate.new(send_at)
      elsif send_at.is_a?(Time)
        schedule = TL::MessageSchedulingStateSendAtDate.new(send_at.to_unix.to_i32)
      elsif send_at.is_a?(Time::Span)
        schedule = TL::MessageSchedulingStateSendAtDate.new(Time.utc.to_unix.to_i32 + send_at.total_seconds)
      end

      options = TL::SendMessageOptions.new(disable_notification, background, schedule)
      message_content = TL::InputMessageText.new(formatted_text, disable_web_page_preview, clear_draft)

      TL.send_message(chat_id, reply_to_message.to_i64, options, message_content)
    end
  end
end
