require "../spec_helper"

include Proton::TL

Spectator.describe Proton::MTProto::RpcError do
  describe "from_tl" do
    subject(error) { described_class.from_tl(tl) }

    provided tl = Root::RpcError.new(420, "FLOOD_WAIT_31"), it: "finds the value suffix" do
      expect(error).to eq(described_class.new(420, "FLOOD_WAIT", 31, nil))
    end

    provided tl = Root::RpcError.new(500, "INTERDC_2_CALL_ERROR"), it: "finds an internal value" do
      expect(error).to eq(described_class.new(500, "INTERDC_CALL_ERROR", 2, nil))
    end
  end
end
