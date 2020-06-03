require "../src/proton"

class Userbot < Proton::Client
  include Proton

  def handle_message_update(update : TL::UpdateNewMessage)
    msg = update.message
    return unless msg.is_outgoing

    cid = msg.chat_id
    mid = msg.id
    reply_id = msg.reply_to_message_id
    content = msg.content
    msg_text = content.is_a?(TL::MessageText) ? content.text.text : ""

    return if msg_text.empty? || !msg_text.starts_with?('.')
    parts = msg_text[1..].split(/\s+/)

    return if parts.empty?

    begin
      case parts[0]
      when "status"
        spawn edit_message(msg, "Firing on all cylinders!")
      when "version"
        git_revision = if Dir.exists?(".git") && `git status`
          `git rev-parse HEAD`
        else
          "unknown"
        end

        proton_version = Proton::VERSION

        edit_message(msg, "Proton version: #{proton_version}\nGit hash: #{git_revision}")
      when "info"
        message = msg.reply_to_message_id > 0 ? TL.get_message(cid, msg.reply_to_message_id) : msg
        send_message(cid, "```\n" + message.to_pretty_json + "\n```")
      when "u", "user"
        if parts.size > 1
          username = parts[1]

          if username.to_i64?
            id = username.to_i64?
          elsif chat = TL.search_public_chat(username.lstrip('@'))
              id = chat.id
          end
        elsif reply_id > 0
          reply_message = TL.get_message(cid, reply_id)
          if (fw_info = reply_message.forward_info) && fw_info.origin.is_a?(TL::MessageForwardOriginUser)
            origin = fw_info.origin.as(TL::MessageForwardOriginUser)
            id = origin.sender_user_id
          elsif reply_message.sender_user_id > 0
            id = reply_message.sender_user_id
          end
        end

        if id
          if (Int32::MIN..Int32::MAX).covers?(id) && (user = TL.get_user(id.to_i32))
            # Try fetching a user entity
            response = String.build do |str|
              str.puts "*User info*"
              str.puts "    id: `#{user.id}`"
              str.puts "    first name: #{user.first_name}"
              str.puts "    last name: #{user.last_name}"
              str.puts "    username: #{user.username ? "@" + user.username : ""}"
              str.puts "    contact: #{user.is_mutual_contact}"
            end
            send_message(cid, response, disable_notification: true)
          elsif (chat && !chat.private?) || (chat = TL.get_chat(id.to_i64))
            # Now try a chat entity
            response = String.build do |str|
              if chat.supergroup?
                type = chat.type.as(TL::ChatTypeSupergroup)
                sgid = type.supergroup_id
                supergroup = TL.get_supergroup(sgid)
                supergroup_full = TL.get_supergroup_full_info(sgid)
              end

              str.puts "*Chat info*"
              str.puts "    id: `#{chat.id}`"
              str.puts "    title: #{chat.title}"
              if supergroup && supergroup_full
                str.puts "    username: @#{supergroup.username}"
                str.puts "    user status: #{supergroup.status.class.name.underscore.split('_').last}"
                str.puts "    member count: #{supergroup_full.member_count}"
                str.puts "    banned count: #{supergroup_full.banned_count}"
                str.puts "    restricted count: #{supergroup_full.restricted_count}"
                str.puts "    administrator count: #{supergroup_full.administrator_count}"
              end
            end
            send_message(cid, response, disable_notification: true)
          else
            send_message(cid, "Couldn't resolve the entity")
          end
        else
          send_message(cid, "Couldn't resolve the entity")
        end
      else
      end
    rescue ex
      puts ex.inspect_with_backtrace
      Log.error(exception: ex) { "An error occured" }
      edit_message(msg, "Error: #{ex.message}")
    end
  end

  def edit_message(msg : TL::Message, text : String)
    TL.edit_message_text(msg.chat_id, msg.id, TL::InputMessageText.new(
      TL::FormattedText.new(text: text, entities: [] of TL::TextEntity),
      disable_web_page_preview: true,
      clear_draft: true
    ))
  end

  def start
    receive_loop do |update|
      case update
      when TL::UpdateNewMessage
        spawn handle_message_update(update)
      else
        # Nop
      end
    end
  end
end

Log.builder.bind "*", :info, Log::IOBackend.new

client = Userbot.new(
  api_id: ENV["API_ID"].to_i,
  api_hash: ENV["API_HASH"],
  verbosity_level: 2,
  auth_flow: Proton::TerminalAuthFlow.new(encryption_key: "")
)

client.start
