module Proton::TL
  class Error < Exception
    class UnexpectedEOF < Error; end

    class UnexpectedConstructor < Error
      def initialize(@id : UInt32)
        super("ID: #{id}")
      end
    end
  end
end
