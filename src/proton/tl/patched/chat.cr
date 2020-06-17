module Proton
  module TL
    class Chat < TLObject
      def display_name
        title.to_s
      end

      def private?
        type.is_a?(TL::ChatTypePrivate)
      end

      def group?
        type.is_a?(TL::ChatTypeBasicGroup)
      end

      def supergroup?
        type.is_a?(TL::ChatTypeSupergroup)
      end

      def secret?
        type.is_a?(TL::ChatTypeSecret)
      end

      def supergroup_id
        if supergroup?
          type!.as(TL::ChatTypeSupergroup).supergroup_id!
        end
      end

      def supergroup
        if sgid = supergroup_id
          TL.get_supergroup(sgid)
        end
      end
    end
  end
end
