# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the results of the inline query.
  # Use sendInlineQueryResultMessage to send the result of the query.
  # inline_query_id [::Int64] Unique identifier of the inline query.
  # next_offset [::String] The offset for the next request.
  #   If empty, there are no more results.
  # results [::Array(Proton::Types::InlineQueryResult)] Results of the query.
  # switch_pm_text [::String] If non-empty, this text should be shown on the button, which opens a private chat with
  #   the bot and sends the bot a start message with the switch_pm_parameter.
  # switch_pm_parameter [::String] Parameter for the bot start message.
  class InlineQueryResults < Types::Base
    property inline_query_id : ::Int64
    property next_offset : ::String
    property results : ::Array(Proton::Types::InlineQueryResult)
    property switch_pm_text : ::String
    property switch_pm_parameter : ::String

    def initialize(@inline_query_id : ::Int64, @next_offset : ::String, @results : ::Array(Proton::Types::InlineQueryResult), @switch_pm_text : ::String, @switch_pm_parameter : ::String)
    end
  end
end

