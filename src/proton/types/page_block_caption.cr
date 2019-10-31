# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a caption of an instant view web page block, consisting of a text and a trailing credit.
  # text [Proton::Types::RichText] Content of the caption.
  # credit [Proton::Types::RichText] Block credit (like HTML tag <cite>).
  class PageBlockCaption < Types::Base
    property text : Proton::Types::RichText
    property credit : Proton::Types::RichText

    def initialize(@text : Proton::Types::RichText, @credit : Proton::Types::RichText)
    end
  end
end

