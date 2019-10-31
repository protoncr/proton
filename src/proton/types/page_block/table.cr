# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A table.
  # caption [Proton::Types::RichText] Table caption.
  # cells [::Array(::Array(Proton::Types::PageBlockTableCell))] Table cells.
  # is_bordered [::Bool] True, if the table is bordered.
  # is_striped [::Bool] True, if the table is striped.
  class PageBlock::Table < Types::PageBlock
    property caption : Proton::Types::RichText
    property cells : ::Array(::Array(Proton::Types::PageBlockTableCell))
    property is_bordered : ::Bool
    property is_striped : ::Bool

    def initialize(@caption : Proton::Types::RichText, @cells : ::Array(::Array(Proton::Types::PageBlockTableCell)), @is_bordered : ::Bool, @is_striped : ::Bool)
    end
  end
end

