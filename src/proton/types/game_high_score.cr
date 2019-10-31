# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains one row of the game high score table.
  # position [::Int32] Position in the high score table.
  # user_id [::Int32] User identifier.
  # score [::Int32] User score.
  class GameHighScore < Types::Base
    property position : ::Int32
    property user_id : ::Int32
    property score : ::Int32

    def initialize(@position : ::Int32, @user_id : ::Int32, @score : ::Int32)
    end
  end
end

