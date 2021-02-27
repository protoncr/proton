require "../spec_helper"

Spectator.describe Proton::Parser::Utils do
  describe ".remove_tl_comments" do
    it "removes no comments" do
      data = "hello\nworld"
      expect(described_class.remove_tl_comments(data)).to eq(data)

      data = " \nhello\nworld\n "
      expect(described_class.remove_tl_comments(data)).to eq(data)
    end

    it "removes leading comments" do
      data = " // hello\n world "
      expected = " \n world "
      expect(described_class.remove_tl_comments(data)).to eq(expected)
    end

    it "removes trailing comments" do
      data = " \nhello \n // world \n \n "
      expected = " \nhello \n \n \n "
      expect(described_class.remove_tl_comments(data)).to eq(expected)
    end

    it "removes many comments" do
      data = "no\n//yes\nno\n//yes\nno\n"
      expected = "no\n\nno\n\nno\n"
      expect(described_class.remove_tl_comments(data)).to eq(expected)
    end
  end

  describe ".infer_id" do
    it "infers the id of a definition" do
      # Note the type `bytes`
      data = "rpc_answer_dropped msg_id:long seq_no:int bytes:int = RpcDropAnswer"
      expect(described_class.infer_id(data)).to eq(0xa43ad8b7)

      # Note the use of angle brackets
      data = "msgs_ack msg_ids:Vector<long> = MsgsAck"
      expect(described_class.infer_id(data)).to eq(0x62d6b459)

      # Note the use of curly brackets
      data = "invokeAfterMsg {X:Type} msg_id:long query:!X = X"
      expect(described_class.infer_id(data)).to eq(0xcb9f372d)

      # Note the use of `true` flags
      data = "inputMessagesFilterPhoneCalls flags:# missed:flags.0?true = MessagesFilter"
      expect(described_class.infer_id(data)).to eq(0x80c99768)
    end
  end
end
