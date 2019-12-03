# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a public HTTPS link to a message in a public supergroup or channel with a username.
  class PublicMessageLink < Types::Base
    include JSON::Serializable

    # Message link
    property link : ::String

    # HTML-code for embedding the message
    property html : ::String

    def initialize(@link : ::String, @html : ::String)
    end
  end
end
