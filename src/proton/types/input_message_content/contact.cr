# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message containing a user contact.
  # contact [Proton::Types::Contact] Contact to send.
  class InputMessageContent::Contact < Types::InputMessageContent
    property contact : Proton::Types::Contact

    def initialize(@contact : Proton::Types::Contact)
    end
  end
end

