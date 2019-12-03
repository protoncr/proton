# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message containing a user contact.
  class InputMessageContent::Contact < Types::InputMessageContent
    include JSON::Serializable

    # Contact to send
    property contact : Proton::Types::Contact

    def initialize(@contact : Proton::Types::Contact)
    end
  end
end
