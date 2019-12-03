# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Contains information about the total amount of data that was used to send and receive files.
  class NetworkStatisticsEntry::File < Types::NetworkStatisticsEntry
    include JSON::Serializable

    # Type of the file the data is part of
    property file_type : Proton::Types::FileType

    # Type of the network the data was sent through. Call setNetworkType to maintain the actual network type
    property network_type : Proton::Types::NetworkType

    # Total number of bytes sent
    property sent_bytes : ::Int64

    # Total number of bytes received
    property received_bytes : ::Int64

    def initialize(@file_type : Proton::Types::FileType, @network_type : Proton::Types::NetworkType, @sent_bytes : ::Int64, @received_bytes : ::Int64)
    end
  end
end
