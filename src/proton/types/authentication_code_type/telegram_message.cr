# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An authentication code is delivered via a private Telegram message, which can be viewed in another client.
  class AuthenticationCodeType::TelegramMessage < Types::AuthenticationCodeType
    include JSON::Serializable

    # Length of the code
    property length : ::Int32

    def initialize(@length : ::Int32)
    end
  end
end
