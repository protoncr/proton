require "log"

module Proton
  Log = ::Log.for(self)
end

require "./core_ext/*"
require "./proton/tl/lib"
require "./proton/crypto/lib"
require "./proton/mtproto/lib"
