# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A rule to allow certain specified users to do something.
  # user_ids [::Array(::Int32)] The user identifiers.
  class UserPrivacySettingRule::AllowUsers < Types::UserPrivacySettingRule
    property user_ids : ::Array(::Int32)

    def initialize(@user_ids : ::Array(::Int32))
    end
  end
end

