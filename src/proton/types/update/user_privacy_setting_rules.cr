# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Some privacy setting rules have been changed.
  class Update::UserPrivacySettingRules < Types::Update
    include JSON::Serializable

    # The privacy setting
    property setting : Proton::Types::UserPrivacySetting

    # New privacy rules
    property rules : Proton::Types::UserPrivacySettingRules

    def initialize(@setting : Proton::Types::UserPrivacySetting, @rules : Proton::Types::UserPrivacySettingRules)
    end
  end
end
