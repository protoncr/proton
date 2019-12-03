# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a caption of an instant view web page block, consisting of a text and a trailing credit.
  class PageBlockCaption < Types::Base
    include JSON::Serializable

    # Content of the caption
    property text : Proton::Types::RichText

    # Block credit (like HTML tag <cite>)
    property credit : Proton::Types::RichText

    def initialize(@text : Proton::Types::RichText, @credit : Proton::Types::RichText)
    end
  end
end
