require "../spec_helper"

Spectator.describe Proton::TL::I128 do
  it "serializes to bytes" do
    bytes = Bytes.new(16)
    int = Proton::TL::I128::MAX
    IO::ByteFormat::LittleEndian.encode(int, bytes)
    expect(bytes).to eq(Bytes[255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255])
  end

  it "deserializes from bytes" do
    bytes = Bytes[255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255]
    int = IO::ByteFormat::LittleEndian.decode(described_class, bytes)
    expect(int).to eq(Proton::TL::I128::MAX)
  end
end

Spectator.describe Proton::TL::I256 do
  it "serializes to bytes" do
    bytes = Bytes.new(32)
    int = Proton::TL::I256::MAX
    IO::ByteFormat::LittleEndian.encode(int, bytes)
    expect(bytes).to eq(Bytes[255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255])
  end

  it "deserializes from bytes" do
    bytes = Bytes[255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255]
    int = IO::ByteFormat::LittleEndian.decode(described_class, bytes)
    expect(int).to eq(Proton::TL::I256::MAX)
  end
end
