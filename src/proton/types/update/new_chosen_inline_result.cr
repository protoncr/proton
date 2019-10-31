# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The user has chosen a result of an inline query; for bots only.
  # sender_user_id [::Int32] Identifier of the user who sent the query.
  # user_location [Proton::Types::Location, nil] User location, provided by the client; may be null.
  # query [::String] Text of the query.
  # result_id [::String] Identifier of the chosen result.
  # inline_message_id [::String] Identifier of the sent inline message, if known.
  class Update::NewChosenInlineResult < Types::Update
    property sender_user_id : ::Int32
    property user_location : Proton::Types::Location?
    property query : ::String
    property result_id : ::String
    property inline_message_id : ::String

    def initialize(@sender_user_id : ::Int32, @query : ::String, @result_id : ::String, @inline_message_id : ::String, @user_location : Proton::Types::Location? = nil)
    end
  end
end

