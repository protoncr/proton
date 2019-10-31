# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Some privacy setting rules have been changed.
  # setting [Proton::Types::UserPrivacySetting] The privacy setting.
  # rules [Proton::Types::UserPrivacySettingRules] New privacy rules.
  class Update::UserPrivacySettingRules < Types::Update
    property setting : Proton::Types::UserPrivacySetting
    property rules : Proton::Types::UserPrivacySettingRules

    def initialize(@setting : Proton::Types::UserPrivacySetting, @rules : Proton::Types::UserPrivacySettingRules)
    end
  end
end

