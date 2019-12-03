# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A table.
  class PageBlock::Table < Types::PageBlock
    include JSON::Serializable

    # Table caption
    property caption : Proton::Types::RichText

    # Table cells
    property cells : ::Array(::Array(Proton::Types::PageBlockTableCell))

    # True, if the table is bordered
    property is_bordered : ::Bool

    # True, if the table is striped
    property is_striped : ::Bool

    def initialize(@caption : Proton::Types::RichText, @cells : ::Array(::Array(Proton::Types::PageBlockTableCell)), @is_bordered : ::Bool, @is_striped : ::Bool)
    end
  end
end
