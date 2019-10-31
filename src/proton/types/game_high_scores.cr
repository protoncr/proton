# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of game high scores.
  # scores [::Array(Proton::Types::GameHighScore)] A list of game high scores.
  class GameHighScores < Types::Base
    property scores : ::Array(Proton::Types::GameHighScore)

    def initialize(@scores : ::Array(Proton::Types::GameHighScore))
    end
  end
end

