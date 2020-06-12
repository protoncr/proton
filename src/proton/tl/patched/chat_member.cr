module Proton
  module TL
    class ChatMember
      def administrator?
        status.is_a?(TL::ChatMemberStatusAdministrator)
      end

      def creator?
        status.is_a?(TL::ChatMemberStatusCreator)
      end

      def member?
        status.is_a?(TL::ChatMemberStatusMember)
      end

      def restricted?
        status.is_a?(TL::ChatMemberStatusRestricted)
      end

      def left?
        status.is_a?(TL::ChatMemberStatusLeft)
      end

      def banned?
        status.is_a?(TL::ChatMemberStatusBanned)
      end
    end
  end
end
