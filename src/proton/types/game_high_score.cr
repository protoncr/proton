# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains one row of the game high score table.
  class GameHighScore < Types::Base
    include JSON::Serializable

    # Position in the high score table
    property position : ::Int32

    # User identifier
    property user_id : ::Int32

    # User score
    property score : ::Int32

    def initialize(@position : ::Int32, @user_id : ::Int32, @score : ::Int32)
    end
  end
end
