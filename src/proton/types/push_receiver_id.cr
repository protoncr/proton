# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a globally unique push receiver identifier, which can be used to identify which account has received a
  #   push notification.
  class PushReceiverId < Types::Base
    include JSON::Serializable

    # The globally unique identifier of push notification subscription
    property id : ::String

    def initialize(@id : ::String)
    end
  end
end
