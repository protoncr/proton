module Proton
  class UpdateManager
    TIMEOUT = 30

    property running

    getter handlers

    def initialize(@td_client : Pointer(Void))
      @handlers = [] of UpdateHandler(Types::Base)
      @mutex = Mutex.new
    end

    def add_handler(handler)
      @mutex.synchronize { @handlers << handler }
    end

    def <<(handler)
      add_handler(handler)
    end

    private def handle_update(callback : Proc(Types::Base, Nil)? = nil)
      update = API.client_receive(@td_client, TIMEOUT)

      unless update.nil?
        json = JSON.parse(update).as_h
        # puts "Incoming: " + json.to_pretty_json
        extra = json.delete("@extra").try &.as_s
        update = Types::Base.from_json(update)


        callback.call(update) if callback

        match_handlers!(update, extra).each { |h| h.run(update) }
      end
    end

    def handle_update(&block : Types::Base ->)
      handle_update(block)
    end

    private def match_handlers!(update : U, extra : String?) forall U
      @mutex.synchronize do
        matched_handlers = handlers.reduce([] of UpdateHandler(U)) do |acc, h|
          acc << h if h.match?(update, extra)
          acc
        end
        matched_handlers.each { |h| handlers.delete(h) if h.disposable? }
        matched_handlers
      end
    end
  end
end
