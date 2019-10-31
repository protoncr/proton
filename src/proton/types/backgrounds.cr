# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of backgrounds.
  # backgrounds [::Array(Proton::Types::Background)] A list of backgrounds.
  class Backgrounds < Types::Base
    property backgrounds : ::Array(Proton::Types::Background)

    def initialize(@backgrounds : ::Array(Proton::Types::Background))
    end
  end
end

