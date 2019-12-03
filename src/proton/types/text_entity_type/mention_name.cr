# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A text shows instead of a raw mention of the user (e.g., when the user has no username).
  class TextEntityType::MentionName < Types::TextEntityType
    include JSON::Serializable

    # Identifier of the mentioned user
    property user_id : ::Int32

    def initialize(@user_id : ::Int32)
    end
  end
end
