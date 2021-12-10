module Proton
  module Network
    # A destructive asycnhronous queue in which all items live in a channel,
    # and all operations are performed within a mutex.
    class RequestQueue(U, T)
      Log = ::Log.for(self)

      DEFAULT_TIMEOUT = 5.seconds

      @hash : Hash(U, Channel(T | Exception))
      @mutex : Mutex

      def initialize
        @hash = {} of U => Channel(T | Exception)
        @mutex = Mutex.new
      end

      def set(key : U)
        ch = Channel(T | Exception).new(1)
        @hash[key] = ch
      end

      def answer(key : U, answer : T | Exception)
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
        @hash[key].receive
      end
    end
  end
end
