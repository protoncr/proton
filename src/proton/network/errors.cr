module Proton
  module Network
    class Error < Exception; end

    class ReadError < Error
      def self.from(err)
        case err
        when IO::Error
          IOError.new(err.message)
        when MTProto::TransportError
          TransportError.new(err.message)
        when MTProto::RequestError
          DeserializeError.new(err.message)
        else
          new(err.message)
        end
      end
    end

    class IOError < ReadError
      def initialize(err)
        super("read error, IO failed: #{err}")
      end
    end

    class TransportError < ReadError
      def initialize(err)
        super("read error, transport-level: #{err}")
      end
    end

    class DeserializeError < ReadError
      def initialize(err)
        super("read error, bad response: #{err}")
      end
    end

    class InvocationError < Error; end

    class AuthorizationError < Error; end
  end
end
