# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A rule to allow certain specified users to do something.
  class UserPrivacySettingRule::AllowUsers < Types::UserPrivacySettingRule
    include JSON::Serializable

    # The user identifiers
    property user_ids : ::Array(::Int32)

    def initialize(@user_ids : ::Array(::Int32))
    end
  end
end
