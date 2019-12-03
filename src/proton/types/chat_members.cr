# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of chat members.
  class ChatMembers < Types::Base
    include JSON::Serializable

    # Approximate total count of chat members found
    property total_count : ::Int32

    # A list of chat members
    property members : ::Array(Proton::Types::ChatMember)

    def initialize(@total_count : ::Int32, @members : ::Array(Proton::Types::ChatMember))
    end
  end
end
