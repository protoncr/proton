# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes an instant view page for a web page.
  # page_blocks [::Array(Proton::Types::PageBlock)] Content of the web page.
  # version [::Int32] Version of the instant view, currently can be 1 or 2.
  # url [::String] Instant view URL; may be different from WebPage.url and must be used for the correct anchors
  #   handling.
  # is_rtl [::Bool] True, if the instant view must be shown from right to left.
  # is_full [::Bool] True, if the instant view contains the full page.
  #   A network request might be needed to get the full web page instant view.
  class WebPageInstantView < Types::Base
    property page_blocks : ::Array(Proton::Types::PageBlock)
    property version : ::Int32
    property url : ::String
    property is_rtl : ::Bool
    property is_full : ::Bool

    def initialize(@page_blocks : ::Array(Proton::Types::PageBlock), @version : ::Int32, @url : ::String, @is_rtl : ::Bool, @is_full : ::Bool)
    end
  end
end

