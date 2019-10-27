module Proton
  class UpdateManager
    @td_client : Pointer(Void)

    getter queue : Hash(String, Proc(Update, Nil))

    getter? running : Bool

    property timeout : Int32

    def initialize(@td_client, @timeout)
      @queue = {} of String => Proc(Update, Nil)
      @completed = {} of String => Update
      @running = false
    end

    def add(key, &event : Update -> Nil)
      add(key, event)
    end

    def add(key, event : Update -> Nil)
      @queue[key] = event
    end

    def delete(key)
      @queue.delete(key)
    end

    def stop
      @running = false
    end

    def stopped?
      !running?
    end

    def start_event_loop
      @running = true
      while running?
        if update = API.client_receive(@td_client, @timeout)
          puts "Incoming: " + update.to_pretty_json
          @queue.each do |key, event|
            event.call(update)
          end
        end
      end
    end
  end
end
