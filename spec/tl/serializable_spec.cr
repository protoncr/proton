require "../spec_helper"
require "./fixtures/tlobjects"

Spectator.describe TL::Serializable do
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

  describe BigInt do
    describe "#tl_serialize" do
      subject(big) { BigInt.new(str) }

      provided str = "21345817372864405881847059188222722561" do
        expect(big.to_bytes(128)).to eq(Bytes[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16])
      end

      provided str = "14528991250861404666834535435384615765856667510756806797353855100662256435713" do
        expect(big.to_bytes(256)).to eq(Bytes[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32])
      end
    end
  end

  describe Array do
    describe "#tl_serialize" do
      describe "with primitives" do
        subject(arr) { [0x7f_i32] }
        subject(arr_empty) { [] of Int32 }

        it "serializes an empty Vector" do
          expect(arr_empty.to_bytes(bare: false)).to eq(Bytes[0x15, 0xc4, 0xb5, 0x1c, 0x0, 0x0, 0x0, 0x0])
        end

        it "serializes a bare empty Vector" do
          expect(arr_empty.to_bytes(bare: true)).to eq(Bytes[0x0, 0x0, 0x0, 0x0])
        end

        it "serializes a vector containing one value" do
          expect(arr.to_bytes(bare: false)).to eq(Bytes[0x15, 0xc4, 0xb5, 0x1c, 0x1, 0x0, 0x0, 0x0, 0x7f, 0x0, 0x0, 0x0])
        end

        it "serializes a bare vector containing one value" do
          expect(arr.to_bytes(bare: true)).to eq(Bytes[0x1, 0x0, 0x0, 0x0, 0x7f, 0x0, 0x0, 0x0])
        end
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

  describe TL::TLObject do
    describe "#tl_serialize" do
      describe "simple example" do
        subject(obj) { Fixtures::SimpleExample.new(Bytes[1, 2, 3, 4]) }

        it "serializes a simple object with bytes" do
          expect(obj.to_bytes).to eq(Bytes[1, 0, 0, 0, 4, 1, 2, 3, 4, 0, 0, 0])
        end
      end

      describe "flags example" do
        subject(obj) { Fixtures::FlagsExample.new(123456789_i64, bytes, bool) }

        provided bytes = Bytes[1, 2, 3, 4], bool = true do
          expect(obj.to_bytes).to eq(Bytes[2, 0, 0, 0, 3, 0, 0, 0, 21, 205, 91, 7, 0, 0, 0, 0, 4, 1, 2, 3, 4, 0, 0, 0])
        end

        provided bytes = Bytes[1, 2, 3, 4], bool = nil do
          expect(obj.to_bytes).to eq(Bytes[2, 0, 0, 0, 1, 0, 0, 0, 21, 205, 91, 7, 0, 0, 0, 0, 4, 1, 2, 3, 4, 0, 0, 0])
        end

        provided bytes = nil, bool = true do
          expect(obj.to_bytes).to eq(Bytes[2, 0, 0, 0, 2, 0, 0, 0, 21, 205, 91, 7, 0, 0, 0, 0])
        end

        provided bytes = nil, bool = nil do
          expect(obj.to_bytes).to eq(Bytes[2, 0, 0, 0, 0, 0, 0, 0, 21, 205, 91, 7, 0, 0, 0, 0])
        end
      end
    end
  end
end
