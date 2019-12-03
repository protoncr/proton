# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with an invoice; can be used only by bots and only in private chats.
  class InputMessageContent::Invoice < Types::InputMessageContent
    include JSON::Serializable

    # Invoice
    property invoice : Proton::Types::Invoice

    # Product title; 1-32 characters
    property title : ::String

    # Product description; 0-255 characters
    property description : ::String

    # Product photo size
    property photo_size : ::Int32

    # Product photo width
    property photo_width : ::Int32

    # Product photo height
    property photo_height : ::Int32

    # The invoice payload
    property payload : ::String

    # Payment provider token
    property provider_token : ::String

    # JSON-encoded data about the invoice, which will be shared with the payment provider
    property provider_data : ::String

    # Unique invoice bot start_parameter for the generation of this invoice
    property start_parameter : ::String

    # Product photo URL; optional
    property photo_url : ::String? = nil

    def initialize(@invoice : Proton::Types::Invoice, @title : ::String, @description : ::String, @photo_size : ::Int32, @photo_width : ::Int32, @photo_height : ::Int32, @payload : ::String, @provider_token : ::String, @provider_data : ::String, @start_parameter : ::String, @photo_url : ::String? = nil)
    end
  end
end
