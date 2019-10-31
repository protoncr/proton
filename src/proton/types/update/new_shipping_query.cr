# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A new incoming shipping query; for bots only.
  # Only for invoices with flexible price.
  # id [::Int64] Unique query identifier.
  # sender_user_id [::Int32] Identifier of the user who sent the query.
  # invoice_payload [::String] Invoice payload.
  # shipping_address [Proton::Types::Address] User shipping address.
  class Update::NewShippingQuery < Types::Update
    property id : ::Int64
    property sender_user_id : ::Int32
    property invoice_payload : ::String
    property shipping_address : Proton::Types::Address

    def initialize(@id : ::Int64, @sender_user_id : ::Int32, @invoice_payload : ::String, @shipping_address : Proton::Types::Address)
    end
  end
end

