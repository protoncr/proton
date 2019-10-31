# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a public HTTPS link to a message in a public supergroup or channel with a username.
  # link [::String] Message link.
  # html [::String] HTML-code for embedding the message.
  class PublicMessageLink < Types::Base
    property link : ::String
    property html : ::String

    def initialize(@link : ::String, @html : ::String)
    end
  end
end

