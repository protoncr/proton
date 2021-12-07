module Proton
  module Network
    # A destructive asycnhronous queue in which all items live in a channel,
    # and all operations are performed within a mutex.
    class RequestQueue(U, T)
      Log = ::Log.for(self)

      DEFAULT_TIMEOUT = 30.seconds

      @hash : Hash(U, Channel(T))
      @mutex : Mutex

      def initialize
        @hash = {} of U => Channel(T)
        @mutex = Mutex.new
      end

      def set(key : U)
        ch = Channel(T).new(1)
        @hash[key] = ch
      end

      def answer(key : U, answer : T)
        # @mutex.synchronize do
          if ch = @hash[key]?
            ch.send(answer)
            @hash.delete(key)
          else
            Log.warn { "received answer for non-existant request #{key}" }
          end
        # end
      end

      def get(key : U, timeout = DEFAULT_TIMEOUT)
        select
        when item = @hash[key].receive
          item
        when timeout timeout
          raise "Timeout while waiting for response; key: #{key}"
        end
      end
    end
  end
end
