# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of websites the current user is logged in with Telegram.
  class ConnectedWebsites < Types::Base
    include JSON::Serializable

    # List of connected websites
    property websites : ::Array(Proton::Types::ConnectedWebsite)

    def initialize(@websites : ::Array(Proton::Types::ConnectedWebsite))
    end
  end
end
