# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A rule to restrict all specified users from doing something.
  class UserPrivacySettingRule::RestrictUsers < Types::UserPrivacySettingRule
    include JSON::Serializable

    # The user identifiers
    property user_ids : ::Array(::Int32)

    def initialize(@user_ids : ::Array(::Int32))
    end
  end
end
