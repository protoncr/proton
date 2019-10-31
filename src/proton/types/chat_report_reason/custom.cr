# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A custom reason provided by the user.
  # text [::String] Report text.
  class ChatReportReason::Custom < Types::ChatReportReason
    property text : ::String

    def initialize(@text : ::String)
    end
  end
end

