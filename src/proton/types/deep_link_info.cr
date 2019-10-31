# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a tg:// deep link.
  # text [Proton::Types::FormattedText] Text to be shown to the user.
  # need_update_application [::Bool] True, if user should be asked to update the application.
  class DeepLinkInfo < Types::Base
    property text : Proton::Types::FormattedText
    property need_update_application : ::Bool

    def initialize(@text : Proton::Types::FormattedText, @need_update_application : ::Bool)
    end
  end
end

