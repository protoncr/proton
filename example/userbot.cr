require "../src/proton"

class Userbot < Proton::Client
  def handle_message_update(update : UpdateNewMessage)
    msg = update.message
    return unless msg.is_outgoing

    cid = msg.chat_id
    mid = msg.id
    reply_id = msg.reply_to_message_id
    content = msg.content
    msg_text = content.is_a?(MessageText) ? content.text.text : ""

    return if msg_text.empty? || !msg_text.starts_with?('!')
    parts = msg_text[1..].split(/\s+/)

    return if parts.empty?

    case parts[0]
    when "status"
      spawn edit_message(msg, "Firing on all cylinders!")
    else

    end
  end

  def edit_message(msg : Message, text : String)
    edit_message_text(msg.chat_id, msg.id, InputMessageText.new(
      FormattedText.new(text: text, entities: [] of TextEntity),
      disable_web_page_preview: true,
      clear_draft: true
    ))
  end

  def start
    receive_loop do |update|
      case update
      when UpdateNewMessage
        handle_message_update(update)
      else
        # Nop
      end
    end
  end
end

client = Userbot.new(
  api_id: ENV["API_ID"].to_i,
  api_hash: ENV["API_HASH"],
  verbosity_level: 4,
  auth_flow: Proton::TerminalAuthFlow.new(encryption_key: "")
)

client.start
