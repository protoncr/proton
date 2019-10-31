# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Contains information about the total amount of data that was used to send and receive files.
  # file_type [Proton::Types::FileType] Type of the file the data is part of.
  # network_type [Proton::Types::NetworkType] Type of the network the data was sent through.
  #   Call setNetworkType to maintain the actual network type.
  # sent_bytes [::Int64] Total number of bytes sent.
  # received_bytes [::Int64] Total number of bytes received.
  class NetworkStatisticsEntry::File < Types::NetworkStatisticsEntry
    property file_type : Proton::Types::FileType
    property network_type : Proton::Types::NetworkType
    property sent_bytes : ::Int64
    property received_bytes : ::Int64

    def initialize(@file_type : Proton::Types::FileType, @network_type : Proton::Types::NetworkType, @sent_bytes : ::Int64, @received_bytes : ::Int64)
    end
  end
end

