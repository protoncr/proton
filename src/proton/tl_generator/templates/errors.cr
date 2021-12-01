module Proton
  module TL
    class Error < Exception; end

    class UnexpectedConstructorError < Error
      def initialize(id)
        super("Unexpected constructor id #{id}")
      end
    end
  end
end
