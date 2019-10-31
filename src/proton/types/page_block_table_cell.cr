# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a cell of a table.
  # text [Proton::Types::RichText] Cell text.
  # is_header [::Bool] True, if it is a header cell.
  # colspan [::Int32] The number of columns the cell should span.
  # rowspan [::Int32] The number of rows the cell should span.
  # align [Proton::Types::PageBlockHorizontalAlignment] Horizontal cell content alignment.
  # valign [Proton::Types::PageBlockVerticalAlignment] Vertical cell content alignment.
  class PageBlockTableCell < Types::Base
    property text : Proton::Types::RichText
    property is_header : ::Bool
    property colspan : ::Int32
    property rowspan : ::Int32
    property align : Proton::Types::PageBlockHorizontalAlignment
    property valign : Proton::Types::PageBlockVerticalAlignment

    def initialize(@text : Proton::Types::RichText, @is_header : ::Bool, @colspan : ::Int32, @rowspan : ::Int32, @align : Proton::Types::PageBlockHorizontalAlignment, @valign : Proton::Types::PageBlockVerticalAlignment)
    end
  end
end

