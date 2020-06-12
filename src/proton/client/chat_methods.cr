module Proton
  module ChatMethods
    Log = ::Log.for("proton.chat_methods")

    def get_chat_administrators(chat)
      chat_id = chat.is_a?(TL::Chat) ? chat.id : chat.to_i64
      admins = TL.get_chat_administrators(chat_id).administrators
      admins.map do |admin|
        TL.get_user(admin.user_id)
      end
    end
  end
end
