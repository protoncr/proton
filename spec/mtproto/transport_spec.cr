require "../spec_helper"

Spectator.describe Proton::MTProto::IntermediateTransport do
  subject(pack) do
    input = Bytes.new(n).map_with_index! { |_, i| (i & 0xff).to_u8 }
    {Proton::MTProto::IntermediateTransport.new, IO::Memory.new(input), IO::Memory.new}
  end

  describe "#pack" do
    provided n = 0 do
      transport, input, output = pack
      transport.pack(input, output)
      expect(output.to_slice).to eq(Bytes[0xEE, 0xEE, 0xEE, 0xEE, 0x00, 0x00, 0x00, 0x00])
    end

    provided n = 7 do
      transport, input, output = pack
      expect { transport.pack(input, output) }.to raise_error("Invalid input length 7 (input must be divisible by 4)")
    end

    provided n = 128 do
      transport, input, output = pack
      transport.pack(input, output)
      buffer = output.to_slice
      expect(buffer[..7]).to eq(Bytes[0xEE, 0xEE, 0xEE, 0xEE, 0x80, 0x00, 0x00, 0x00])
      expect(buffer[8..]).to eq(input.to_slice)
    end
  end

  describe "#unpack" do
    example "unpack small" do
      transport = Proton::MTProto::IntermediateTransport.new
      input = IO::Memory.new(Bytes[0x01])
      output = IO::Memory.new
      expect { transport.unpack(input, output) }.to raise_error(Proton::MTProto::MissingBytesError)
    end

    provided n = 128 do
      transport, input, packed = pack
      unpacked = IO::Memory.new
      transport.pack(input, packed)
      transport.unpack(IO::Memory.new(packed.to_slice[4..]), unpacked)
      expect(input.to_slice).to eq(unpacked.to_slice)
    end
  end
end

Spectator.describe Proton::MTProto::AbridgedTransport do
  subject(pack) do
    input = Bytes.new(n).map_with_index! { |_, i| (i & 0xff).to_u8 }
    {Proton::MTProto::AbridgedTransport.new, IO::Memory.new(input), IO::Memory.new}
  end

  describe "#pack" do
    provided n = 0 do
      transport, input, output = pack
      transport.pack(input, output)
      expect(output.to_slice).to eq(Bytes[0xEF, 0x00])
    end

    provided n = 7 do
      transport, input, output = pack
      expect { transport.pack(input, output) }.to raise_error("Invalid input length 7 (input must be divisible by 4)")
    end

    provided n = 128 do
      transport, input, output = pack
      transport.pack(input, output)
      buffer = output.to_slice
      expect(buffer[..1]).to eq(Bytes[0xEF, 0x20])
      expect(buffer[2..]).to eq(input.to_slice)
    end

    provided n = 1024 do
      transport, input, output = pack
      transport.pack(input, output)
      buffer = output.to_slice
      expect(buffer[..4]).to eq(Bytes[0xEF, 0x7F, 0x00, 0x01, 0x00])
      expect(buffer[5..]).to eq(input.to_slice)
    end
  end

  describe "#unpack" do
    example "unpack small" do
      transport = Proton::MTProto::AbridgedTransport.new
      input = IO::Memory.new(Bytes[0x01])
      output = IO::Memory.new
      expect { transport.unpack(input, output) }.to raise_error(Proton::MTProto::MissingBytesError)
    end

    provided n = 128 do
      transport, input, packed = pack
      unpacked = IO::Memory.new
      transport.pack(input, packed)
      transport.unpack(IO::Memory.new(packed.to_slice[1..]), unpacked)
      expect(input.to_slice).to eq(unpacked.to_slice)
    end

    provided n = 1024 do
      transport, input, packed = pack
      unpacked = IO::Memory.new
      transport.pack(input, packed)
      transport.unpack(IO::Memory.new(packed.to_slice[1..]), unpacked)
      expect(input.to_slice).to eq(unpacked.to_slice)
    end
  end
end

Spectator.describe Proton::MTProto::FullTransport do
  subject(pack) do
    input = Bytes.new(n).map_with_index! { |_, i| (i & 0xff).to_u8 }
    {Proton::MTProto::FullTransport.new, IO::Memory.new(input), IO::Memory.new}
  end

  subject(unpack) do
    transport, expected_output, input = pack
    transport.pack(expected_output, input)
    {expected_output, Proton::MTProto::FullTransport.new, input, IO::Memory.new}
  end

  describe "#pack" do
    provided n = 0 do
      transport, input, output = pack
      transport.pack(input, output)
      expect(output.to_slice).to eq(Bytes[12, 0, 0, 0, 0, 0, 0, 0, 38, 202, 141, 50])
    end

    provided n = 7 do
      transport, input, output = pack
      expect { transport.pack(input, output) }.to raise_error("Invalid input length 7 (input must be divisible by 4)")
    end

    provided n = 128 do
      transport, input, output = pack
      transport.pack(input, output)
      slice = output.to_slice

      expect(slice[..3]).to eq(Bytes[140, 0, 0, 0])
      expect(slice[4..7]).to eq(Bytes[0, 0, 0, 0])
      expect(slice[8...(8 + input.size)]).to eq(input.to_slice)
      expect(slice[(8 + input.size)..]).to eq(Bytes[134, 115, 149, 55])
    end

    provided n = 128 do
      transport, input, output = pack
      transport.pack(input, output)

      output.clear

      transport.pack(input, output)
      slice = output.to_slice

      expect(slice[..3]).to eq(Bytes[140, 0, 0, 0])
      expect(slice[4..7]).to eq(Bytes[1, 0, 0, 0])
      expect(slice[8...(8 + input.size)]).to eq(input.to_slice)
      expect(slice[(8 + input.size)..]).to eq(Bytes[150, 9, 240, 74])
    end
  end

  describe "#unpack" do
    example "unpack small" do
      transport = Proton::MTProto::FullTransport.new
      input = IO::Memory.new(Bytes[0, 1, 2])
      output = IO::Memory.new
      expect { transport.unpack(input, output) }.to raise_error(Proton::MTProto::MissingBytesError)
    end

    provided n = 128 do
      expected_output, transport, input, output = unpack
      transport.unpack(input, output)
      expect(output.to_slice).to eq(expected_output.to_slice)
    end

    provided n = 128 do
      transport, input, packed = pack
      unpacked = IO::Memory.new
      transport.pack(input, packed)
      transport.unpack(packed, unpacked)
      expect(input.to_slice).to eq(unpacked.to_slice)

      packed.clear
      unpacked.clear
      transport.pack(input, packed)
      transport.unpack(packed, unpacked)
      expect(input.to_slice).to eq(unpacked.to_slice)
    end

    provided n = 128 do
      expected_output, transport, input, output = unpack
      last = input.size - 1
      input.to_slice[last] ^= 0xFF
      expect {
        transport.unpack(input, output)
      }.to raise_error(Proton::MTProto::BadCrcError, "bad crc (expected 932541318, got 3365237638)")
    end

    provided n = 128 do
      transport, input, packed = pack
      unpacked = IO::Memory.new
      transport.pack(input, packed)
      packed.clear
      transport.pack(input, packed)
      expect {
        transport.unpack(packed, unpacked)
      }.to raise_error(Proton::MTProto::BadSeqError, "bad sequence (expected 0, got 1)")
    end
  end
end
