# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a cell of a table.
  class PageBlockTableCell < Types::Base
    include JSON::Serializable

    # Cell text
    property text : Proton::Types::RichText

    # The number of columns the cell should span
    property colspan : ::Int32

    # The number of rows the cell should span
    property rowspan : ::Int32

    # Horizontal cell content alignment
    property align : Proton::Types::PageBlockHorizontalAlignment

    # Vertical cell content alignment
    property valign : Proton::Types::PageBlockVerticalAlignment

    # True, if it is a header cell
    property is_header : ::Bool = false

    def initialize(@text : Proton::Types::RichText, @colspan : ::Int32, @rowspan : ::Int32, @align : Proton::Types::PageBlockHorizontalAlignment, @valign : Proton::Types::PageBlockVerticalAlignment, @is_header : ::Bool = false)
    end
  end
end
