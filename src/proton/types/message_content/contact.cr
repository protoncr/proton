# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with a user contact.
  class MessageContent::Contact < Types::MessageContent
    include JSON::Serializable

    # Message content
    property contact : Proton::Types::Contact

    def initialize(@contact : Proton::Types::Contact)
    end
  end
end
