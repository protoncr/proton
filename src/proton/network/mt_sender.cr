require "socket"

module Proton
  module Network
    class MTSender
      # The maximum data that we're willing to send or receive at once.
      #
      # By having a fixed-size buffer, we can avoid unnecessary allocations
      # and trivially prevent allocating more than this limit if we ever
      # received invalid data.
      #
      # Telegram will close the connection with roughly a megabyte of data,
      # so to account for the transports' own overhead, we add a few extra
      # kilobytes to the maximum data size.
      MAXIMUM_DATA = (1024 * 1024) + (8 * 1024)

      # How often to send pings
      PING_DELAY = 60.seconds

      # After how many seconds should the server close the connection when we send a ping?
      #
      # What this value essentially means is that we have `NO_PING_DISCONNECT - PING_DELAY` seconds
      # to keep sending pings, or the server will close the connection.
      #
      # Pings ensure the connection is kept active, and the delayed disconnect ensures the messages
      # are getting through consistently enough.
      NO_PING_DISCONNECT = 75

      getter socket : TcpSocket
      getter transport : Transport
      getter mtp : Mtp

      # Generate a random ID for each ping
      def self.generate_random_id
        last_id = Atomic.new(0_i64)

        if last_id.get == 0
          since_epoch = Time.utc - Time.unix(0)
          now = since_epoch.total_nanoseconds.to_i64
          last_id.compare_and_set(0, now)
        end

        last_id.add(1)
      end
    end
  end
end
