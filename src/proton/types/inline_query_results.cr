# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the results of the inline query.
  # Use sendInlineQueryResultMessage to send the result of the query.
  class InlineQueryResults < Types::Base
    include JSON::Serializable

    # Unique identifier of the inline query
    property inline_query_id : ::String

    # The offset for the next request. If empty, there are no more results
    property next_offset : ::String

    # Results of the query
    property results : ::Array(Proton::Types::InlineQueryResult)

    # If non-empty, this text should be shown on the button, which opens a private chat with the bot and sends the bot a start message with the switch_pm_parameter
    property switch_pm_text : ::String

    # Parameter for the bot start message
    property switch_pm_parameter : ::String

    def initialize(@inline_query_id : ::String, @next_offset : ::String, @results : ::Array(Proton::Types::InlineQueryResult), @switch_pm_text : ::String, @switch_pm_parameter : ::String)
    end
  end
end
