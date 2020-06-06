require "../src/proton"

class Userbot < Proton::Client
  include Proton

  @[Command(".status")]
  def status_command(ctx)
    edit_message(ctx.message, "`Firing on all cylinders!`")
  end

  @[Command(".info")]
  def message_info_command(ctx)
    message = ctx.message.reply_to_message_id > 0 ?
      TL.get_message(ctx.message.chat_id, ctx.message.reply_to_message_id) :
      ctx.message
    edit_message(ctx.message, "```\n" + message.to_pretty_json + "\n```")
  end

  @[Command(".u")]
  def user_info_command(ctx)
    msg = ctx.message
    cid = msg.chat_id
    mid = msg.id
    reply_id = msg.reply_to_message_id
    parts = ctx.text.split(/\s+/)

    if parts.size > 0 && !parts[0].empty?
      username = parts[0]

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
        # pp user
        # Try fetching a user entity
        response = String.build do |str|
          str.puts "*User info*"
          str.puts "    id: `#{user.id}`"
          str.puts "    first name: #{Helpers.escape_markdown(user.first_name)}"
          str.puts "    last name: #{Helpers.escape_markdown(user.last_name)}"
          str.puts "    username: #{user.username.empty? ? "" : "@" + Helpers.escape_markdown(user.username)}"
          str.puts "    permalink: [link](tg://user?id=#{user.id})"
          str.puts "    restriction reason: #{user.restriction_reason}" unless user.restriction_reason.empty?
        end
        edit_message(msg, response)
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
          str.puts "    title: #{Helpers.escape_markdown(chat.title)}"
          if supergroup && supergroup_full
            str.puts "    username: @#{supergroup.username}"
            str.puts "    user status: #{supergroup.status.class.name.underscore.split('_').last}"
            str.puts "    member count: #{supergroup_full.member_count}"
            str.puts "    banned count: #{supergroup_full.banned_count}"
            str.puts "    restricted count: #{supergroup_full.restricted_count}"
            str.puts "    administrator count: #{supergroup_full.administrator_count}"
          end
        end
        edit_message(msg, response)
      else
        edit_message(msg, "Couldn't resolve the entity")
      end
    else
      edit_message(msg, "Couldn't resolve the entity")
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
