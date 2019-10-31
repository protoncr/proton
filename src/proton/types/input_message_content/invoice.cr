# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with an invoice; can be used only by bots and only in private chats.
  # invoice [Proton::Types::Invoice] Invoice.
  # title [::String] Product title; 1-32 characters.
  # description [::String] Product description; 0-255 characters.
  # photo_url [::String, nil] Product photo URL; optional.
  # photo_size [::Int32] Product photo size.
  # photo_width [::Int32] Product photo width.
  # photo_height [::Int32] Product photo height.
  # payload [::String] The invoice payload.
  # provider_token [::String] Payment provider token.
  # provider_data [::String] JSON-encoded data about the invoice, which will be shared with the payment provider.
  # start_parameter [::String] Unique invoice bot start_parameter for the generation of this invoice.
  class InputMessageContent::Invoice < Types::InputMessageContent
    property invoice : Proton::Types::Invoice
    property title : ::String
    property description : ::String
    property photo_url : ::String?
    property photo_size : ::Int32
    property photo_width : ::Int32
    property photo_height : ::Int32
    property payload : ::String
    property provider_token : ::String
    property provider_data : ::String
    property start_parameter : ::String

    def initialize(@invoice : Proton::Types::Invoice, @title : ::String, @description : ::String, @photo_size : ::Int32, @photo_width : ::Int32, @photo_height : ::Int32, @payload : ::String, @provider_token : ::String, @provider_data : ::String, @start_parameter : ::String, @photo_url : ::String? = nil)
    end
  end
end

