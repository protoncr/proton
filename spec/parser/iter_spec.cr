require "../spec_helper"

include Proton::Parser

Spectator.describe Proton::Parser::Iter do
  describe ".parse" do
    it "raises parse error on unknown separator" do
      iterator = described_class.new("---foo---")
      expect { iterator.next }.to raise_error(ParseError::UnknownSeparator)
      expect { iterator.next }.to eq(Iterator::Stop::INSTANCE)
    end

    it "parses a file successfully" do
      tl = <<-TL
      // leading; comment
      first#1 = t; // inline comment
      second and bad;
      third#3 = t;
      // trailing comment
      TL

      iterator = described_class.new(tl)

      obj = iterator.next
      expect(obj).to be_a(Definition)
      expect(obj.as(Definition).id).to eq(1)

      expect { iterator.next }.to raise_error

      obj = iterator.next
      expect(obj).to be_a(Definition)
      expect(obj.as(Definition).id).to eq(3)

      expect(iterator.next).to eq(Iterator::Stop::INSTANCE)
    end
  end
end
