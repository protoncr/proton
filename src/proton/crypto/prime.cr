require "big"

module Proton::Crypto
  module Prime
    CURRENT_DH_PRIME = BigInt.new(
        "C71CAEB9C6B1C9048E6C522F70F13F73980D40238E3E21C14934D037563D930F" +
        "48198A0AA7C14058229493D22530F4DBFA336F6E0AC925139543AED44CCE7C37" +
        "20FD51F69458705AC68CD4FE6B6B13ABDC9746512969328454F18FAF8C595F64" +
        "2477FE96BB2A941D5BCD1D4AC8CC49880708FA9B378E3C4F3A9060BEE67CF9A4" +
        "A4A695811051907E162753B56B0F6B410DBA74D8A84B2A14B3144E0EF1284754" +
        "FD17ED950D5965B4B9DD46582DB1178D169C6BC465B0D6FF9CA3928FEF5B9AE4" +
        "E418FC15E83EBEA0F87FA9FF5EED70050DED2849F47BF959D956850CE929851F" +
        "0D8115F635B105EE2E4E15D04B2454BF6F4FADF034B10403119CD8E3B92FCC5B",
        16
    )

    def self.decompose(pq : Int)
      if pq % 2 == 0
        return 2
      end

      y, c, m = rand(1...pq), rand(1...pq), rand(1...pq)
      g = r = q = 1
      x = ys = 0

      while g == 1
        x = y

        (0...r).each do |i|
          y = (((y ** 2) % pq) + c) % pq
        end

        k = 0

        while k < r && g == 1
          ys = y

          (0...Math.min(m, r - k)).each do |i|
            y = (((y ** 2) % pq) + c) % pq
            q = q * (x - y).abs % pq
          end

          g = q.gcd(pq)
          k += m
        end

        r *= 2
      end

      if g == pq
        loop do
          ys = (((y ** 2) % pq) + c) % pq
          g = q * (x - y).abs % pq

          break if g > 1
        end
      end

      return g
    end
  end
end
