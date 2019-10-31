# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of websites the current user is logged in with Telegram.
  # websites [::Array(Proton::Types::ConnectedWebsite)] List of connected websites.
  class ConnectedWebsites < Types::Base
    property websites : ::Array(Proton::Types::ConnectedWebsite)

    def initialize(@websites : ::Array(Proton::Types::ConnectedWebsite))
    end
  end
end

