# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of text entities.
  class TextEntities < Types::Base
    include JSON::Serializable

    # List of text entities
    property entities : ::Array(Proton::Types::TextEntity)

    def initialize(@entities : ::Array(Proton::Types::TextEntity))
    end
  end
end
