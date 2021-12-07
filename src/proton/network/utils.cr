module Proton
  module Network
    module Utils
      extend self

      @@last_id: Atomic(Int64) = Atomic.new(0_i64)

      # Generate a random ID for each ping
      def generate_random_id
        if @@last_id.get == 0
          since_epoch = Time.utc - Time.unix(0)
          now = since_epoch.total_nanoseconds.to_i64
          @@last_id.compare_and_set(0, now)
        end

        @@last_id.add(1)
      end
    end
  end
end
