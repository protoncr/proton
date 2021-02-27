require "../spec_helper"

include Proton::Parser
include Proton::Generator

Spectator.describe Proton::Generator::Crystalize do
  describe ".classify" do
    it "classifies namespaced type" do
      expect(Crystalize.classify("ns.some_OK_name"), "SomeOkName")
      expect(Crystalize.classify("foo.bar.typeName"), "TypeName")
    end

    it "classifies type without namespace" do
      expect(Crystalize.classify("typeName"), "TypeName")
      expect(Crystalize.classify("fooBar_baz"), "FooBarBaz")
    end

    it "works on types with acroynms" do
      expect(Crystalize.classify("JSONObject"), "JsonObject")
      expect(Crystalize.classify("RPCCandidatePortal"), "RpcCandidatePortal")
    end
  end

  describe Crystalize::Definitions do
    describe ".type_name" do
      it "returns the def as a crystal class name" do
        d = Definition.parse("userEmpty = User")
        name = described_class.type_name(d)
        expect(name).to eq("UserEmpty")
      end
    end

    describe ".qual_name" do
      context "no namespace" do
        it "returns the def as a fully qualified crystal class name" do
          d = Definition.parse("userEmpty = User")
          name = described_class.qual_name(d)
          expect(name).to eq("Root::UserEmpty")
        end
      end

      context "with namespace" do
        it "returns the def as a fully qualified crystal class name" do
          d = Definition.parse("upload.fileCdnRedirect = upload.File")
          name = described_class.qual_name(d)
          expect(name).to eq("Upload::FileCdnRedirect")
        end
      end
    end

    describe ".variant_name" do
      it "returns a classified variant name for a def" do
        d = Definition.parse("new_session_created = NewSession")
        name = described_class.variant_name(d)
        expect(name).to eq("Created")
      end

      it "works with no variant" do
        d = Definition.parse("true = True")
        name = described_class.variant_name(d)
        expect(name).to eq("True")
      end

      it "works with self variant" do
        d = Definition.parse("inputPeerSelf = InputPeer")
        name = described_class.variant_name(d)
        expect(name).to eq("PeerSelf")
      end
    end
  end

  describe Crystalize::Types do
    describe ".type_name" do
      it "returns the type as a crystal class name" do
        ty = Type.parse("storage.FileType")
        name = described_class.type_name(ty)
        expect(name).to eq("FileType")
      end
    end

    describe ".qual_name" do
      context "no namespace" do
        it "returns the type as a fully qualified crystal class name" do
          ty = Type.parse("InputPeer")
          name = described_class.qual_name(ty)
          expect(name).to eq("Root::InputPeer")
        end
      end

      context "with namespace" do
        it "returns the type as a fully qualified crystal class name" do
          ty = Type.parse("storage.FileType")
          name = described_class.qual_name(ty)
          expect(name).to eq("Storage::FileType")
        end
      end

      context "builtins" do
        it "bytes" do
          ty = Type.parse("bytes")
          name = described_class.qual_name(ty)
          expect(name).to eq("Bytes")
        end

        it "int128" do
          ty = Type.parse("int128")
          name = described_class.qual_name(ty)
          expect(name).to eq("TL::I128")
        end

        it "int256" do
          ty = Type.parse("int256")
          name = described_class.qual_name(ty)
          expect(name).to eq("TL::I256")
        end

        it "vector<long>" do
          ty = Type.parse("vector<long>")
          name = described_class.qual_name(ty)
          expect(name).to eq("Array(Int64)")
        end

        it "Vector<bool>" do
          ty = Type.parse("Vector<bool>")
          name = described_class.qual_name(ty)
          expect(name).to eq("Array(Bool)")
        end

        it "generic ref" do
          ty = Type.parse("X")
          ty.generic_ref = true
          name = described_class.qual_name(ty)
          expect(name).to eq("TLObject")
        end
      end
    end
  end

  describe Crystalize::Parameters do
    describe ".qual_name" do
      it "normal name" do
        prm = Parameter.parse("pts:int")
        name = described_class.qual_name(prm)
        expect(name).to eq("Int32")
      end

      it "flag def" do
        prm = Parameter.parse("flags:#")
        name = described_class.qual_name(prm)
        expect(name).to eq("UInt32")
      end

      it "flags" do
        prm = Parameter.parse("timeout:flags.1?int")
        name = described_class.qual_name(prm)
        expect(name).to eq("Int32?")
      end

      it "true flags" do
        prm = Parameter.parse("timeout:flags.0?true")
        name = described_class.qual_name(prm)
        expect(name).to eq("Bool")
      end
    end

    describe ".attr_name" do
      it "corrects attribute name" do
        prm = Parameter.parse("access_hash:long")
        name = described_class.attr_name(prm)
        expect(name).to eq("access_hash")
      end

      it "replaces reserved attribute name" do
        prm = Parameter.parse("private:flags.0?true")
        name = described_class.attr_name(prm)
        expect(name).to eq("is_private")
      end

      it "replaces self attribute name" do
        prm = Parameter.parse("self:flags.0?true")
        name = described_class.attr_name(prm)
        expect(name).to eq("is_self")
      end
    end
  end
end
