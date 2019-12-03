# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A new incoming shipping query; for bots only.
  # Only for invoices with flexible price.
  class Update::NewShippingQuery < Types::Update
    include JSON::Serializable

    # Unique query identifier
    property id : ::String

    # Identifier of the user who sent the query
    property sender_user_id : ::Int32

    # Invoice payload
    property invoice_payload : ::String

    # User shipping address
    property shipping_address : Proton::Types::Address

    def initialize(@id : ::String, @sender_user_id : ::Int32, @invoice_payload : ::String, @shipping_address : Proton::Types::Address)
    end
  end
end
