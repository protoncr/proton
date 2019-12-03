# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A custom reason provided by the user.
  class ChatReportReason::Custom < Types::ChatReportReason
    include JSON::Serializable

    # Report text
    property text : ::String

    def initialize(@text : ::String)
    end
  end
end
