# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a globally unique push receiver identifier, which can be used to identify which account has received a
  #   push notification.
  # id [::Int64] The globally unique identifier of push notification subscription.
  class PushReceiverId < Types::Base
    property id : ::Int64

    def initialize(@id : ::Int64)
    end
  end
end

