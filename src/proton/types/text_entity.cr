# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a part of the text that needs to be formatted in some unusual way.
  # offset [::Int32] Offset of the entity in UTF-16 code points.
  # length [::Int32] Length of the entity, in UTF-16 code points.
  # type [Proton::Types::TextEntityType] Type of the entity.
  class TextEntity < Types::Base
    property offset : ::Int32
    property length : ::Int32
    property type : Proton::Types::TextEntityType

    def initialize(@offset : ::Int32, @length : ::Int32, @type : Proton::Types::TextEntityType)
    end
  end
end

