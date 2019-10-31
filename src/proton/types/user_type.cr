# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the type of the user.
  # The following types are possible: regular users, deleted users and bots.
  class UserType < Types::Base

    def initialize()
    end
  end
end

require "./user_type/regular"
  require "./user_type/deleted"
  require "./user_type/bot"
  require "./user_type/unknown"