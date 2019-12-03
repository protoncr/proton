# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains statistics about network usage.
  abstract class NetworkStatisticsEntry < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "networkStatisticsEntryFile" => Types::NetworkStatisticsEntry::File,
      "networkStatisticsEntryCall" => Types::NetworkStatisticsEntry::Call
    })
  end
end

require "./network_statistics_entry/file"
require "./network_statistics_entry/call"
