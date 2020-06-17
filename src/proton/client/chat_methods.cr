module Proton
  module ChatMethods
    Log = ::Log.for("proton.chat_methods")

    def get_chat_administrators(chat : TL::Chat | Int64)
      chat_id = chat.is_a?(TL::Chat) ? chat.id! : chat
      admins = TL.get_chat_administrators(chat_id).administrators!
      admins.map do |admin|
        TL.get_user(admin.user_id!)
      end
    end

    # Ban a chat member with an optional `until_date`. If the date is less than
    # 30 seconds or more than 365 days from the current time they will be
    # considered permabanned.
    def ban_chat_member(chat : TL::Chat | Int64, user : TL::User | Int32, until_date = 0)
      chat_id = chat.is_a?(TL::Chat) ? chat.id! : chat
      user_id = user.is_a?(TL::User) ? user.id! : user

      until_date =
        case until_date
        when Time
          until_date.to_unix
        when Time::Span
          Time.utc + until_date.total_seconds
        when Int
          until_date
        end

      banned_status = TL::ChatMemberStatusBanned.new(until_date)
      TL.set_chat_member_status(chat_id, user_id, banned_status)
    end

    # Kick a member from the chat by quickly banning and unbanning them.
    def kick_chat_member(chat : TL::Chat | Int64, user : TL::User | Int32)
      chat_id = chat.is_a?(TL::Chat) ? chat.id! : chat
      user_id = user.is_a?(TL::User) ? user.id! : user
      left_status = TL::ChatMemberStatusLeft.new
      TL.set_chat_member_status(chat_id, user_id, left_status)
    end

    def kick_chat_member(chat_member : TL::ChatMember)
      left_status = TL::ChatMemberStatusLeft.new
      TL.set_chat_member_status(chat_member.chat_id!, chat_member.user_id!, left_status)
    end

    # Unban a banned chat member by setting their status to "left".
    #
    # If check is false this method will assume that you already
    # know for sure that the chat member is banned. If they're
    # not banned this method will kick them, so it's advisable
    # to leave it as true.
    def unban_chat_member(chat : TL::Chat | Int64, user : TL::User | Int32, check = true)
      chat_id = chat.is_a?(TL::Chat) ? chat.id! : chat
      user_id = user.is_a?(TL::User) ? user.id! : user

      if check
        chat_member = TL.get_chat_member(chat_id, user_id)
        unban_chat_member(chat_member)
      else
        kick_chat_member(chat_id, user_id)
      end
    end

    # :ditto:
    def unban_chat_member(chat_member : TL::ChatMember)
      return unless chat_member.banned?
      kick_chat_member(chat_member.chat_id!, chat_member.user_id!)
    end
  end
end
