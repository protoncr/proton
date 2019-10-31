module Proton
  class UpdateManager

    @td_client : Pointer(Void)

    @handlers : Array(UpdateHandler)

    @mutex : Mutex

    property timeout : Int32

    def initialize(@td_client, @timeout)
      @handlers = [] of UpdateHandler
      @mutex = Mutex.new
    end

    def add_handler(handler : UpdateHandler)
      @mutex.synchronize { @handlers << handler }
    end

    def <<(handler : UpdateHandler)
      add_handler(handler)
    end

    def run(callback : Proc(Types::Base, Nil)? = nil)
      spawn do
        loop do
          handle_update(callback)
        end
      end

      Fiber.yield
      @mutex.synchronize { @handlers = [] of UpdateHandler }
    end

    def run(&block : Proc(Types::Base, Nil))
      run(block)
    end

    def handle_update(callback : Proc(Types::Base, Nil)?)
      update = API.client_receive(@td_client, @timeout)

      if update
        update = update.as_h
        extra = update.delete("@extra")

        update = Types.wrap(update)
        callback.try &.call(update)

        match_handlers!(update, extra).each { |h| h.run(update) }
      end
    end

    def match_handlers!(update, extra)
      @mutex.synchronize do
        matched_handlers = handlers.select { |h| h.match?(update, extra) }
        matched_handlers.each { |h| handlers.delete(h) if h.disposable? }
        matched_handlers
      end
    end
  end
end
