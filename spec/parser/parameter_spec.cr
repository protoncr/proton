require "../spec_helper"

include Proton::Parser

Spectator.describe Proton::Parser::Parameter do
  describe ".parse" do
    it "raises parse error on empty param" do
      expect { described_class.parse(":noname") }.to raise_error(ParamParseError::Empty)
      expect { described_class.parse("notype:") }.to raise_error(ParamParseError::Empty)
      expect { described_class.parse(":") }.to raise_error(ParamParseError::Empty)
    end

    it "raises on unknown param" do
      expect { described_class.parse("") }.to raise_error(ParamParseError::NotImplemented)
      expect { described_class.parse("no colon") }.to raise_error(ParamParseError::NotImplemented)
      expect { described_class.parse("colonless") }.to raise_error(ParamParseError::NotImplemented)
    end

    it "raises on bad flags" do
      expect { described_class.parse("foo:bar?") }.to raise_error(ParamParseError::InvalidFlag)
      expect { described_class.parse("foo:?bar") }.to raise_error(ParamParseError::InvalidFlag)
      expect { described_class.parse("foo:bar?baz") }.to raise_error(ParamParseError::InvalidFlag)
      expect { described_class.parse("foo:bar.baz?qux") }.to raise_error(ParamParseError::InvalidFlag)
    end

    it "raises on bad generics" do
      expect { described_class.parse("foo:<bar") }.to raise_error(ParamParseError::InvalidGeneric)
      expect { described_class.parse("foo:bar<") }.to raise_error(ParamParseError::InvalidGeneric)
    end

    it "raises on bad typedef" do
      expect { described_class.parse("{a:Type}") }.to raise_error(ParamParseError::TypeDef, "a")
    end

    it "raises on unknown def" do
      expect { described_class.parse("{a:foo}") }.to raise_error(ParamParseError::MissingDef)
    end

    it "parses valid params" do
      expected = Parameter.new("foo", FlagsParam.new)
      expect(described_class.parse("foo:#")).to eq(expected)

      expected = Parameter.new("foo", NormalParam.new(
        type: Type.new(
          namespace: [] of String,
          name: "bar",
          bare: true,
          generic_ref: true,
          generic_arg: nil)))
      expect(described_class.parse("foo:!bar")).to eq(expected)

      expected = Parameter.new("foo", NormalParam.new(
        type: Type.new(
          namespace: [] of String,
          name: "baz",
          bare: true,
          generic_ref: false,
          generic_arg: nil),
        flag: Flag.new(
          name: "bar",
          index: 1)))
      expect(described_class.parse("foo:bar.1?baz")).to eq(expected)

      expected = Parameter.new("foo", NormalParam.new(
        type: Type.new(
          namespace: [] of String,
          name: "bar",
          bare: true,
          generic_ref: false,
          generic_arg: Type.parse("baz"))))
      expect(described_class.parse("foo:bar<baz>")).to eq(expected)

      expected = Parameter.new("foo", NormalParam.new(
        type: Type.new(
          namespace: [] of String,
          name: "baz",
          bare: true,
          generic_ref: false,
          generic_arg: Type.parse("qux")),
        flag: Flag.new(
          name: "bar",
          index: 1)))
      expect(described_class.parse("foo:bar.1?baz<qux>")).to eq(expected)
    end
  end
end
