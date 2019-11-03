# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Provides information about the method by which an authentication code is delivered to the user.
  class AuthenticationCodeType < Types::Base

    def initialize()
    end
  end
end

require "./authentication_code_type/telegram_message"
require "./authentication_code_type/sms"
require "./authentication_code_type/call"
require "./authentication_code_type/flash_call"