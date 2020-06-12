module Proton
  module TL
    class User
      def deleted?
        type.is_a?(TL::UserTypeDeleted)
      end

      def bot?
        type.is_a?(TL::UserTypeBot)
      end

      def display_name
        "#{first_name} #{last_name}".strip
      end

      def inline_mention(markdown_version = 1)
        name = display_name
        name = name.strip.empty? ? id : name
        "[#{Utils.escape_md(name, markdown_version)}](tg://user?id=#{id})"
      end
    end
  end
end
