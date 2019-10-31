# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The payload from a general callback button.
  # data [::String] Data that was attached to the callback button.
  class CallbackQueryPayload::Data < Types::CallbackQueryPayload
    property data : ::String

    def initialize(@data : ::String)
    end
  end
end

