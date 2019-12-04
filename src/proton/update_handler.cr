module Proton
  struct UpdateHandler(T)

    getter extra : String?

    getter? disposable : Bool

    def initialize(*, @extra : String? = nil, @disposable = false, action : T ->)
      @action = action
    end

    def self.new(*, extra = nil, disposable = false, &block : T ->)
      new(extra: extra, disposable: disposable, action: block)
    end

    def run(update)
      @action.call(update.as(T))
    end

    def match?(update, extra = nil)
      update.is_a?(T) && (@extra.nil? || @extra == extra)
    end

    def to_s(io)
      io << "Proton::UpdateHandler(#{T}"
      io << ": #{extra}" if extra
      io << ")"
      io << " disposable" if disposable?
      io
    end
  end
end
