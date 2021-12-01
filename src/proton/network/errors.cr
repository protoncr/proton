module Proton
  module Network
    class Error
      class ReadError < Error; end

      class InvokationError < Error; end

      class AuthorizationError < Error; end
    end
  end
end
