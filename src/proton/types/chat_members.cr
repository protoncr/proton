# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of chat members.
  # total_count [::Int32] Approximate total count of chat members found.
  # members [::Array(Proton::Types::ChatMember)] A list of chat members.
  class ChatMembers < Types::Base
    property total_count : ::Int32
    property members : ::Array(Proton::Types::ChatMember)

    def initialize(@total_count : ::Int32, @members : ::Array(Proton::Types::ChatMember))
    end
  end
end

