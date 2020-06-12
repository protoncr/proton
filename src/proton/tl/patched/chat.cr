module Proton
  module TL
    class Chat < TLObject
      def display_name
        title
      end

      def private?
        @type.is_a?(TL::ChatTypePrivate)
      end

      def group?
        @type.is_a?(TL::ChatTypeBasicGroup)
      end

      def supergroup?
        @type.is_a?(TL::ChatTypeSupergroup)
      end

      def secret?
        @type.is_a?(TL::ChatTypeSecret)
      end
    end
  end
end
