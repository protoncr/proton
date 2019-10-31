# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The value of the default disable_notification parameter, used when a message is sent to the chat, was changed.
  # chat_id [::Int64] Chat identifier.
  # default_disable_notification [::Bool] The new default_disable_notification value.
  class Update::ChatDefaultDisableNotification < Types::Update
    property chat_id : ::Int64
    property default_disable_notification : ::Bool

    def initialize(@chat_id : ::Int64, @default_disable_notification : ::Bool)
    end
  end
end

