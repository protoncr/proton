require "../spec_helper"

Spectator.describe Proton::Crypto::AuthKey do
  let(test_key) do
    buffer = Bytes.new(256) { |i| i.to_u8 }
    described_class.from_bytes(buffer)
  end

  let(test_nonce) { Bytes.new(32) { |i| i.to_u8 } }

  it "has a valid aux_hash" do
    expected = Bytes[73, 22, 214, 189, 183, 247, 142, 104]
    expect(test_key.aux_hash).to eq(expected)
  end

  it "has a valid key_id" do
    expected = Bytes[50, 209, 88, 110, 164, 87, 223, 200]
    expect(test_key.key_id).to eq(expected)
  end

  describe ".calc_new_nonce_hash" do
    it "calculates a new nonce hash 1" do
      hash = test_key.calc_new_nonce_hash(test_nonce, 1_u8)
      expected = Bytes[194, 206, 210, 179, 62, 89, 58, 85, 210, 127, 74, 93, 171, 238, 124, 103]
      expect(hash).to eq(expected)
    end

    it "calculates a new nonce hash 2" do
      hash = test_key.calc_new_nonce_hash(test_nonce, 2_u8)
      expected = Bytes[244, 49, 142, 133, 189, 47, 243, 190, 132, 217, 254, 252, 227, 220, 227, 159]
      expect(hash).to eq(expected)
    end

    it "calculates a new nonce hash 3" do
      hash = test_key.calc_new_nonce_hash(test_nonce, 3_u8)
      expected = Bytes[75, 249, 215, 179, 125, 180, 19, 238, 67, 29, 40, 81, 118, 49, 203, 61]
      expect(hash).to eq(expected)
    end
  end
end
