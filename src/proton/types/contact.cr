# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a user contact.
  class Contact < Types::Base
    include JSON::Serializable

    # Phone number of the user
    property phone_number : ::String

    # First name of the user; 1-255 characters in length
    property first_name : ::String

    # Last name of the user
    property last_name : ::String

    # Additional data about the user in a form of vCard; 0-2048 bytes in length
    property vcard : ::String

    # Identifier of the user, if known; otherwise 0
    property user_id : ::Int32

    def initialize(@phone_number : ::String, @first_name : ::String, @last_name : ::String, @vcard : ::String, @user_id : ::Int32)
    end
  end
end
