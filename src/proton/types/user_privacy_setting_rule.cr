# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a single rule for managing privacy settings.
  class UserPrivacySettingRule < Types::Base

    def initialize()
    end
  end
end

require "./user_privacy_setting_rule/allow_all"
require "./user_privacy_setting_rule/allow_contacts"
require "./user_privacy_setting_rule/allow_users"
require "./user_privacy_setting_rule/restrict_all"
require "./user_privacy_setting_rule/restrict_contacts"
require "./user_privacy_setting_rule/restrict_users"