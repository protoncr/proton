# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of text entities.
  # entities [::Array(Proton::Types::TextEntity)] List of text entities.
  class TextEntities < Types::Base
    property entities : ::Array(Proton::Types::TextEntity)

    def initialize(@entities : ::Array(Proton::Types::TextEntity))
    end
  end
end

