# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a part of the text that needs to be formatted in some unusual way.
  class TextEntity < Types::Base
    include JSON::Serializable

    # Offset of the entity in UTF-16 code points
    property offset : ::Int32

    # Length of the entity, in UTF-16 code points
    property length : ::Int32

    # Type of the entity
    property type : Proton::Types::TextEntityType

    def initialize(@offset : ::Int32, @length : ::Int32, @type : Proton::Types::TextEntityType)
    end
  end
end
