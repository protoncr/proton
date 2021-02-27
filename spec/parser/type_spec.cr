require "../spec_helper"

include Proton::Parser

Spectator.describe Proton::Parser::Type do
  describe ".parse" do
    it "raises parse error on empty string" do
      expect { described_class.parse("") }.to raise_error(ParamParseError::Empty)
    end

    it "parses a simple type" do
      example = "foo"
      expected = described_class.new(
        namespace: [] of String,
        name: "foo",
        bare: true,
        generic_ref: false,
        generic_arg: nil
      )

      expect(described_class.parse(example)).to eq(expected)
    end

    it "raises parse error on empty namespace" do
      expect { described_class.parse(".") }.to raise_error(ParamParseError::Empty)
      expect { described_class.parse("..") }.to raise_error(ParamParseError::Empty)
      expect { described_class.parse(".foo") }.to raise_error(ParamParseError::Empty)
      expect { described_class.parse("foo.") }.to raise_error(ParamParseError::Empty)
      expect { described_class.parse("foo..foo") }.to raise_error(ParamParseError::Empty)
      expect { described_class.parse(".foo.") }.to raise_error(ParamParseError::Empty)
    end

    it "parses type with namespace" do
      example = "foo.bar.baz"
      expected = described_class.new(
        namespace: ["foo", "bar"],
        name: "baz",
        bare: true,
        generic_ref: false,
        generic_arg: nil
      )

      expect(described_class.parse(example)).to eq(expected)
    end

    it "parses bare type" do
      expect(described_class.parse("foo")).to have_attributes(bare: true)
      expect(described_class.parse("Foo")).to have_attributes(bare: false)
      expect(described_class.parse("Foo.bar")).to have_attributes(bare: true)
      expect(described_class.parse("Foo.Bar")).to have_attributes(bare: false)
      expect(described_class.parse("foo.Bar")).to have_attributes(bare: false)
      expect(described_class.parse("!bar")).to have_attributes(bare: true)
      expect(described_class.parse("!foo.Bar")).to have_attributes(bare: false)
    end

    it "parses generic ref" do
      expect(described_class.parse("f")).to have_attributes(generic_ref: false)
      expect(described_class.parse("!f")).to have_attributes(generic_ref: true)
      expect(described_class.parse("!Foo")).to have_attributes(generic_ref: true)
      expect(described_class.parse("!X")).to have_attributes(generic_ref: true)
    end

    it "parses generic arg" do
      example = described_class.parse("foo.bar")
      expect(example.generic_arg).to be_nil

      example = described_class.parse("foo<bar>")
      expect(example.generic_arg).not_to be_nil

      example = described_class.parse("foo<bar.Baz>")
      expect(example.generic_arg).not_to be_nil

      example = described_class.parse("foo<!bar.baz>")
      expect(example.generic_arg).not_to be_nil

      example = described_class.parse("foo<bar<baz>>")
      expect(example.generic_arg).not_to be_nil
    end
  end
end
