# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a user contact.
  # phone_number [::String] Phone number of the user.
  # first_name [::String] First name of the user; 1-255 characters in length.
  # last_name [::String] Last name of the user.
  # vcard [::String] Additional data about the user in a form of vCard; 0-2048 bytes in length.
  # user_id [::Int32] Identifier of the user, if known; otherwise 0.
  class Contact < Types::Base
    property phone_number : ::String
    property first_name : ::String
    property last_name : ::String
    property vcard : ::String
    property user_id : ::Int32

    def initialize(@phone_number : ::String, @first_name : ::String, @last_name : ::String, @vcard : ::String, @user_id : ::Int32)
    end
  end
end

