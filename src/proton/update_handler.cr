module Proton
  class UpdateHandler(T)
    @action : Proc(Types::Base, Nil)

    getter? disposable : Bool

    getter extra : String?

    def initialize(extra = nil, disposable = false, &action : Proc(Types::Base, Nil))
      @action = action
      @extra = extra
      @disposable = disposable
    end

    def run(update)
      @action.call(update)
    end

    def match?(update, extra = nil)
      update.is_a?(T) && (@extra.nil? || @extra == extra)
    end
  end
end
