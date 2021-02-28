require "big"

module Proton::Crypto
  module Factorize
    def self.gcd(a : BigInt, b : BigInt)
      while b != 0
        na, nb = {b, a % b}
        a = na
        b = nb
      end
      a
    end

    def self.modpow(n : BigInt, e : BigInt, m : BigInt)
      r = 1.to_big_i
      while e > 0
        r = (n * r) % m if e.odd?
        n = (n * n) % m
        e >>= 1
      end
      r
    end

    # Factorize the given number into its two prime factors.
    #
    # The algorithm here is a faster variant of [Pollard's rho algorithm],
    # published by [Richard Brent], based on
    # https://comeoncodeon.wordpress.com/2010/09/18/pollard-rho-brent-integer-factorization/.
    #
    # Pollard's rho algorithm: https://en.wikipedia.org/wiki/Pollard%27s_rho_algorithm
    # Richard Brent: https://maths-people.anu.edu.au/~brent/pd/rpb051i.pdf
    def self.factorize(pq)
      if pq % 2 == 0
        return {2_u64, pq // 2}
      end

      pq = pq.to_u64
      y, c, m = rand(1_u64..(pq - 1)).to_big_i, rand(1_u64..(pq - 1)).to_big_i, rand(1_u64..(pq - 1)).to_big_i
      g = r = q = 1.to_big_i
      x = ys = 0.to_big_i
      pq = pq.to_big_i

      while g == 1
        x = y
        r.times do
          y = (modpow(y, 2.to_big_i, pq) + c) % pq
        end

        k = 0.to_big_i
        while k < r && g == 1
          ys = y
          Math.min(m, r - k).times do
            y = (modpow(y, 2.to_big_i, pq) + c) % pq
            q = q * ((x - y).abs) % pq
          end

          g = gcd(q, pq)
          k += m
        end

        r *= 2
      end

      if g == pq
        loop do
          ys = (modpow(ys, 2.to_big_i, pq) + c) % pq
          g = gcd((x - ys).abs, pq)
          break if g > 1
        end
      end

      p, q = g.to_i64, (pq // g).to_i64
      {Math.min(q, p), Math.max(p, q)}
    end
  end
end
