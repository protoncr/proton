# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes an instant view page for a web page.
  class WebPageInstantView < Types::Base
    include JSON::Serializable

    # Content of the web page
    property page_blocks : ::Array(Proton::Types::PageBlock)

    # Version of the instant view, currently can be 1 or 2
    property version : ::Int32

    # Instant view URL; may be different from WebPage.url and must be used for the correct anchors handling
    property url : ::String

    # True, if the instant view must be shown from right to left
    property is_rtl : ::Bool = false

    # True, if the instant view contains the full page. A network request might be needed to get the full web page instant view
    property is_full : ::Bool = false

    def initialize(@page_blocks : ::Array(Proton::Types::PageBlock), @version : ::Int32, @url : ::String, @is_rtl : ::Bool = false, @is_full : ::Bool = false)
    end
  end
end
