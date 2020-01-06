# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A bot (see https://core.telegram.org/bots).
  class UserType::Bot < Types::UserType
    include JSON::Serializable

    # Placeholder for inline queries (displayed on the client input field)
    property inline_query_placeholder : ::String

    # True, if the bot can be invited to basic group and supergroup chats
    property can_join_groups : ::Bool = false

    # True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages
    property can_read_all_group_messages : ::Bool = false

    # True, if the bot supports inline queries
    property is_inline : ::Bool = false

    # True, if the location of the user should be sent with every inline query to this bot
    property need_location : ::Bool = false

    def initialize(@inline_query_placeholder : ::String, @can_join_groups : ::Bool = false, @can_read_all_group_messages : ::Bool = false, @is_inline : ::Bool = false, @need_location : ::Bool = false)
    end
  end
end
