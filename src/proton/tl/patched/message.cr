module Proton
  module TL
    class Message < TLObject
      def server_id
        divisor = self.id! / 1048576
        if (divisor * (2^20)) % 1 == 0
          divisor.to_i64
        else
          self.id!
        end
      end

      def link
        chat = TL.get_chat(chat_id!)
        if (sg = chat.supergroup)
          if (sg.username!.empty?)
            "https://t.me/c/#{sg.id!}/#{server_id}"
          else
            "https://t.me/#{sg.username!}/#{server_id}"
          end
        else
          "https://t.me/c/#{chat.id!}/#{server_id}"
        end
      end

      def reply?
        reply_to_message_id! > 0
      end

      def forwarded?
        !!self.forward_info
      end

      def text(caption = true)
        content = self.content!
        case content
        when TL::MessageText
          content.text!.text!
        when .responds_to?(:caption)
          if caption
            content.caption!.text!
          end
        else
        end
      end

      def raw_text(caption = true)
        if text = self.text(caption)
          Utils.unparse_text(text, entities)
        end
      end

      def entities(caption = true)
        content = self.content!
        case content
        when TL::MessageText
          content.text!.entities!
        when .responds_to?(:caption)
          if caption
            content.caption!.entities!
          else
            [] of TL::TextEntity
          end
        else
          [] of TL::TextEntity
        end
      end

      def text_entities(caption = true)
        if text = self.text(caption)
          entities(caption).flatten.reduce({} of TL::TextEntity => String) do |acc, ent|
            acc[ent] = text[ent.offset!, ent.length!]
            acc
          end
        else
          {} of TL::TextEntity => String
        end
      end

      def reply_message
        if reply_to_message_id! > 0
          TL.get_message(chat_id!, reply_to_message_id!)
        end
      end

      def from_user
        if sender_user_id! > 0
          TL.get_user(sender_user_id!)
        end
      end
    end
  end
end
