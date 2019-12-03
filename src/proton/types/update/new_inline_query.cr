# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A new incoming inline query; for bots only.
  class Update::NewInlineQuery < Types::Update
    include JSON::Serializable

    # Unique query identifier
    property id : ::Int64

    # Identifier of the user who sent the query
    property sender_user_id : ::Int32

    # Text of the query
    property query : ::String

    # Offset of the first entry to return
    property offset : ::String

    # User location, provided by the client; may be null
    property user_location : Proton::Types::Location? = nil

    def initialize(@id : ::Int64, @sender_user_id : ::Int32, @query : ::String, @offset : ::String, @user_location : Proton::Types::Location? = nil)
    end
  end
end
