# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A new incoming inline query; for bots only.
  # id [::Int64] Unique query identifier.
  # sender_user_id [::Int32] Identifier of the user who sent the query.
  # user_location [Proton::Types::Location, nil] User location, provided by the client; may be null.
  # query [::String] Text of the query.
  # offset [::String] Offset of the first entry to return.
  class Update::NewInlineQuery < Types::Update
    property id : ::Int64
    property sender_user_id : ::Int32
    property user_location : Proton::Types::Location?
    property query : ::String
    property offset : ::String

    def initialize(@id : ::Int64, @sender_user_id : ::Int32, @query : ::String, @offset : ::String, @user_location : Proton::Types::Location? = nil)
    end
  end
end

