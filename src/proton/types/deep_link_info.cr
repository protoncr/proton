# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a tg:// deep link.
  class DeepLinkInfo < Types::Base
    include JSON::Serializable

    # Text to be shown to the user
    property text : Proton::Types::FormattedText

    # True, if user should be asked to update the application
    property need_update_application : ::Bool

    def initialize(@text : Proton::Types::FormattedText, @need_update_application : ::Bool)
    end
  end
end
