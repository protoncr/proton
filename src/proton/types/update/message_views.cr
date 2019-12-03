# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The view count of the message has changed.
  class Update::MessageViews < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int64

    # Message identifier
    property message_id : ::Int64

    # New value of the view count
    property views : ::Int32

    def initialize(@chat_id : ::Int64, @message_id : ::Int64, @views : ::Int32)
    end
  end
end
