require "../spec_helper"

alias I128 = Proton::TL::I128
alias I256 = Proton::TL::I256

Spectator.describe Proton::TL::Serializable do
  describe Bool do
    describe "#tl_serialize" do
      it "serializes true to tl value" do
        expect(true.to_bytes).to eq(Bytes[0xb5, 0x75, 0x72, 0x99])
      end

      it "serializes false to tl value" do
        expect(false.to_bytes).to eq(Bytes[0x37, 0x97, 0x79, 0xbc])
      end
    end
  end

  describe Int do
    describe "#tl_serialize" do
      it "serializes int to tl value" do
        expect(0_i32.to_bytes).to eq(Bytes[0x00, 0x00, 0x00, 0x00])
        expect(1_i32.to_bytes).to eq(Bytes[0x01, 0x00, 0x00, 0x00])
        expect(-1_i32.to_bytes).to eq(Bytes[0xff, 0xff, 0xff, 0xff])
        expect(Int32::MIN.to_bytes).to eq(Bytes[0x00, 0x00, 0x00, 0x80])
      end
    end
  end

  describe I128 do
    describe "#tl_serialize" do
      it "serializes I128 to tl value" do
        i = described_class.new("21345817372864405881847059188222722561")
        expect(i.to_bytes).to eq(Bytes[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16])
      end
    end
  end

  describe I256 do
    describe "#tl_serialize" do
      it "serializes I256 to tl value" do
        i = described_class.new("14528991250861404666834535435384615765856667510756806797353855100662256435713")
        expect(i.to_bytes).to eq(Bytes[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32])
      end
    end
  end

  describe Array do
    describe "#tl_serialize" do
      it "serializes vector to tl value" do
        expect(Array(Int32).new.to_bytes(boxed: false)).to eq(Bytes[0x15, 0xc4, 0xb5, 0x1c, 0x0, 0x0, 0x0, 0x0])
        expect([0x7f_i32].to_bytes(boxed: false)).to eq(Bytes[0x15, 0xc4, 0xb5, 0x1c, 0x1, 0x0, 0x0, 0x0, 0x7f, 0x0, 0x0, 0x0])
      end

      it "serializes boxed vector to tl value" do
        expect(Array(Int32).new.to_bytes(boxed: true)).to eq(Bytes[0x0, 0x0, 0x0, 0x0])
        expect([0x7f_i32].to_bytes(boxed: true)).to eq(Bytes[0x1, 0x0, 0x0, 0x0, 0x7f, 0x0, 0x0, 0x0])
      end
    end
  end

  describe String do
    describe "#tl_serialize" do
      def test_string(string, prefix, suffix)
        expected = IO::Memory.new
        expected.write(prefix.to_slice)
        expected.write(string.to_slice)
        expected.write(suffix.to_slice)
        expected = expected.to_slice

        expect(string.to_bytes).to eq(expected)
      end

      it "serializes string to tl value" do
        test_string("", Bytes[0x00], Bytes[0x00, 0x00, 0x00])
        test_string("Hi", Bytes[0x02], Bytes[0x00])
        test_string("Hi!", Bytes[0x03], Bytes.new(0))
        test_string("Hello", Bytes[0x05], Bytes[0x00, 0x00])
        test_string("Hello, world!", Bytes[0xd], Bytes[0x00, 0x00])
        test_string(
          "This is a very long string, and it has to be longer than 253 \
          characters, which are quite a few but we can make it! Although, \
          it is quite challenging. The quick brown fox jumps over the lazy \
          fox. There is still some more text we need to type. Oh, this \
          sentence made it past!",
          Bytes[0xfe, 0x11, 0x01, 0x00], Bytes[0x00, 0x00, 0x00])
      end
    end
  end
end

Spectator.describe Proton::TL::Deserializable do
  describe Bool do
    describe ".tl_deserialize" do
      it "deserializes true from tl value" do
        expect(Bool.from_bytes(Bytes[0xb5, 0x75, 0x72, 0x99])).to be_true
      end

      it "deserializes false from tl value" do
        expect(Bool.from_bytes(Bytes[0x37, 0x97, 0x79, 0xbc])).to be_false
      end

      it "raises on deserializing invalid constructor id" do
        expect { Bool.from_bytes(Bytes[0x00, 0x00, 0x00, 0x01]) }.to raise_error(Proton::TL::Error::UnexpectedConstructor)
      end
    end
  end

  describe Int do
    describe ".tl_deserialize" do
      it "deserializes int to tl value" do
        expect(Int32.from_bytes(Bytes[0x00, 0x00, 0x00, 0x00])).to eq(0_i32)
        expect(Int32.from_bytes(Bytes[0x01, 0x00, 0x00, 0x00])).to eq(1_i32)
        expect(Int32.from_bytes(Bytes[0xff, 0xff, 0xff, 0xff])).to eq(-1_i32)
        expect(Int32.from_bytes(Bytes[0x00, 0x00, 0x00, 0x80])).to eq(Int32::MIN)
      end
    end
  end

  describe I128 do
    describe ".tl_deserialize" do
      it "deserializes I128 from tl value" do
        i = described_class.new("21345817372864405881847059188222722561")
        expect(described_class.from_bytes(Bytes[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16])).to eq(i)
      end
    end
  end

  describe I256 do
    describe ".tl_deserialize" do
      it "deserializes I256 from tl value" do
        i = described_class.new("14528991250861404666834535435384615765856667510756806797353855100662256435713")
        expect(described_class.from_bytes(Bytes[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32])).to eq(i)
      end
    end
  end

  describe Array do
    describe ".tl_deserialize" do
      it "deserializes vector from tl value" do
        expect(Array(Int32).from_bytes(Bytes[0x15, 0xc4, 0xb5, 0x1c, 0x0, 0x0, 0x0, 0x0], boxed: false)).to eq(Array(Int32).new)
        expect(Array(Int32).from_bytes(Bytes[0x15, 0xc4, 0xb5, 0x1c, 0x1, 0x0, 0x0, 0x0, 0x7f, 0x0, 0x0, 0x0], boxed: false)).to eq([0x7f_i32])
      end

      it "deserializes boxed vector from tl value" do
        expect(Array(Int32).from_bytes(Bytes[0x0, 0x0, 0x0, 0x0], boxed: true)).to eq(Array(Int32).new)
        expect(Array(Int32).from_bytes(Bytes[0x1, 0x0, 0x0, 0x0, 0x7f, 0x0, 0x0, 0x0], boxed: true)).to eq([0x7f_i32])
      end
    end
  end

  describe String do
    describe ".tl_deserialize" do
      it "deserializes string from tl value" do
        expect(String.from_bytes(Bytes[0x00, 0x00, 0x00, 0x00])).to eq("")
        expect(String.from_bytes(Bytes[0x02, 72, 105, 0x00])).to eq("Hi")
      end
    end
  end
end
