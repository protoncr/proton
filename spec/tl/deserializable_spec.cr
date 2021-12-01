require "../spec_helper"
require "./fixtures/tlobjects"

Spectator.describe TL::Deserializable do
  describe Bool do
    describe ".tl_deserialize" do
      it "deserializes true from tl value" do
        expect(Bool.from_bytes(Bytes[0xb5, 0x75, 0x72, 0x99])).to be_true
      end

      it "deserializes false from tl value" do
        expect(Bool.from_bytes(Bytes[0x37, 0x97, 0x79, 0xbc])).to be_false
      end

      it "raises on deserializing invalid constructor id" do
        expect { Bool.from_bytes(Bytes[0x00, 0x00, 0x00, 0x01]) }.to raise_error(TL::UnexpectedConstructorError)
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

  describe BigInt do
    describe ".tl_deserialize(128)" do
      let(i128) { BigInt.new("21345817372864405881847059188222722561") }

      it "deserializes 128 bit BigInt from tl value" do
        expect(BigInt.from_bytes(Bytes[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], 128)).to eq(i128)
      end
    end

    describe ".tl_deserialize(256)" do
      let(i256) { BigInt.new("14528991250861404666834535435384615765856667510756806797353855100662256435713") }

      it "deserializes 256 bit BigInt from tl value" do
        expect(BigInt.from_bytes(Bytes[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32], 256)).to eq(i256)
      end
    end
  end

  describe Array do
    describe ".tl_deserialize" do
      it "deserializes vector from tl value" do
        expect(Array(Int32).from_bytes(Bytes[0x15, 0xc4, 0xb5, 0x1c, 0x1, 0x0, 0x0, 0x0, 0x7f, 0x0, 0x0, 0x0], bare: false)).to eq([0x7f_i32])
      end

      it "deserializes empty vector from tl value" do
        expect(Array(Int32).from_bytes(Bytes[0x15, 0xc4, 0xb5, 0x1c, 0x0, 0x0, 0x0, 0x0], bare: false)).to eq(Array(Int32).new)
      end

      it "deserializes bare vector from tl value" do
        expect(Array(Int32).from_bytes(Bytes[0x1, 0x0, 0x0, 0x0, 0x7f, 0x0, 0x0, 0x0], bare: true)).to eq([0x7f_i32])
      end

      it "deserializes empty bare vector from tl value" do
        expect(Array(Int32).from_bytes(Bytes[0x0, 0x0, 0x0, 0x0], bare: true)).to eq(Array(Int32).new)
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

  describe TL::TLObject do
    describe "#tl_deserialize" do
      describe "simple example" do
        subject(obj) { Fixtures::SimpleExample.new(Bytes[1, 2, 3, 4]) }

        it "deserializes a simple object with bytes" do
          expect(Fixtures::SimpleExample.from_bytes(Bytes[1, 0, 0, 0, 4, 1, 2, 3, 4, 0, 0, 0])).to eq(obj)
        end
      end

      describe "flags example" do
        subject(obj) { Fixtures::FlagsExample.new(123456789_i64, bytes, bool) }

        provided bytes = Bytes[1, 2, 3, 4], bool = true do
          expect(Fixtures::FlagsExample.from_bytes(Bytes[2, 0, 0, 0, 3, 0, 0, 0, 21, 205, 91, 7, 0, 0, 0, 0, 4, 1, 2, 3, 4, 0, 0, 0])).to eq(obj)
        end

        provided bytes = Bytes[1, 2, 3, 4], bool = nil do
          expect(Fixtures::FlagsExample.from_bytes(Bytes[2, 0, 0, 0, 1, 0, 0, 0, 21, 205, 91, 7, 0, 0, 0, 0, 4, 1, 2, 3, 4, 0, 0, 0])).to eq(obj)
        end

        provided bytes = nil, bool = true do
          expect(Fixtures::FlagsExample.from_bytes(Bytes[2, 0, 0, 0, 2, 0, 0, 0, 21, 205, 91, 7, 0, 0, 0, 0])).to eq(obj)
        end

        provided bytes = nil, bool = nil do
          expect(Fixtures::FlagsExample.from_bytes(Bytes[2, 0, 0, 0, 0, 0, 0, 0, 21, 205, 91, 7, 0, 0, 0, 0])).to eq(obj)
        end
      end
    end
  end
end
