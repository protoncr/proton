# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # A list of privacy rules.
  # Rules are matched in the specified order.
  # The first matched rule defines the privacy setting for a given user.
  # If no rule matches, the action is not allowed.
  class UserPrivacySettingRules < Types::Base
    include JSON::Serializable

    # A list of rules
    property rules : ::Array(Proton::Types::UserPrivacySettingRule)

    def initialize(@rules : ::Array(Proton::Types::UserPrivacySettingRule))
    end
  end
end
