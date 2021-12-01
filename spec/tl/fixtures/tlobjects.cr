module Fixtures
  include Proton

  class SimpleExample < TL::TLObject
    getter constructor_id : UInt32 = 0x01
    class_getter constructor_id : UInt32 = 0x01

    getter bytes : Bytes

    def initialize(bytes : Bytes | String | IO)
      @bytes = TL::Utils.parse_bytes!(bytes)
    end

    def tl_serialize(io : IO, bare = false)
      constructor_id.tl_serialize(io) unless bare
      @bytes.tl_serialize(io)
    end

    def self.tl_deserialize(io : IO, bare = false)
      TL::Utils.assert_constructor(io, self.constructor_id) unless bare
      new(
        bytes: Bytes.tl_deserialize(io),
      )
    end
  end

  class FlagsExample < TL::TLObject
    getter constructor_id : UInt32 = 0x02
    class_getter constructor_id : UInt32 = 0x02

    getter id : Int64
    getter bytes : Bytes?
    getter bool : Bool?

    def initialize(
      id : Int64,
      bytes : Bytes | String | IO | Nil = nil,
      bool : Bool | Nil = nil
    )
      @id = id
      @bytes = TL::Utils.parse_bytes(bytes)
      @bool = bool
    end

    def tl_serialize(io : IO, bare = false)
      constructor_id.tl_serialize(io) unless bare
      (
        (!bytes.nil? ? 0x01 : 0) |
          (!bool.nil? ? 0x02 : 0)
      ).tl_serialize(io)
      @id.tl_serialize(io)
      @bytes.tl_serialize(io) unless @bytes.nil?
    end

    def self.tl_deserialize(io : IO, bare = false)
      TL::Utils.assert_constructor(io, self.constructor_id) unless bare
      flags = Int32.tl_deserialize(io)
      new(
        id: Int64.tl_deserialize(io),
        bytes: flags & 0x01 > 0 ? Bytes.tl_deserialize(io) : nil,
        bool: flags & 0x02 > 0 || nil,
      )
    end
  end
end
