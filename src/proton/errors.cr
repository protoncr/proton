module Proton
  module Errors
    class Error < Exception; end

    class DeadClient < Error; end
    class TimeoutError < Error; end
  end
end
