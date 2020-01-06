# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The value of the default disable_notification parameter, used when a message is sent to the chat, was changed.
  class Update::ChatDefaultDisableNotification < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int64

    # The new default_disable_notification value
    property default_disable_notification : ::Bool = false

    def initialize(@chat_id : ::Int64, @default_disable_notification : ::Bool = false)
    end
  end
end
