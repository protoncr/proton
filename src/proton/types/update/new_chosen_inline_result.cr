# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The user has chosen a result of an inline query; for bots only.
  class Update::NewChosenInlineResult < Types::Update
    include JSON::Serializable

    # Identifier of the user who sent the query
    property sender_user_id : ::Int32

    # Text of the query
    property query : ::String

    # Identifier of the chosen result
    property result_id : ::String

    # Identifier of the sent inline message, if known
    property inline_message_id : ::String

    # User location, provided by the client; may be null
    property user_location : Proton::Types::Location? = nil

    def initialize(@sender_user_id : ::Int32, @query : ::String, @result_id : ::String, @inline_message_id : ::String, @user_location : Proton::Types::Location? = nil)
    end
  end
end
