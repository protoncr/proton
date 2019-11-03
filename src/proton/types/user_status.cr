# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the last time the user was online.
  class UserStatus < Types::Base

    def initialize()
    end
  end
end

require "./user_status/empty"
require "./user_status/online"
require "./user_status/offline"
require "./user_status/recently"
require "./user_status/last_week"
require "./user_status/last_month"