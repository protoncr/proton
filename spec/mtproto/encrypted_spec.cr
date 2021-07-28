require "../spec_helper"

Spectator.describe Proton::MTProto::Encrypted do
  # salt + client_id
  let(message_prefix_len) { 8 + 8 }

  # gzip_packed#3072cfa1 packed_data:string = Object;
  let(gzip_packed_header) { Bytes[[0xa1, 0xcf, 0x72, 0x30]] }

  # msg_container#73f1f8dc messages:vector<message> = MessageContainer;
  let(msg_container_header) { Bytes[0xdc, 0xf8, 0xf1, 0x73] }

  let(request) { "Hey!".to_slice }
  let(request_b) { "Bye!".to_slice }

  let(auth_key) { Proton::Crypto::AuthKey.from_bytes(Bytes.new(256) { 0_u8 }) }

  def ensure_buffer_is_message(buffer : Bytes, body : Bytes, seq_no : UInt8)
    # buffer[0...8] is the msg_id, based on `SystemTime::now()`
    expect(buffer[0...8]).not_to eq(Bytes[0, 0, 0, 0, 0, 0, 0, 0])

    # buffer[8...12] is the seq_no, ever-increasing odd number (little endian)
    expect(buffer[8...12]).to eq(Bytes[seq_no, 0, 0, 0, 0])

    # buffer[12...16] is the bytes, the len of the body (little endian)
    expect(buffer[12...16]).to eq(Bytes[body.size.to_u8, 0, 0, 0, 0])

    # buffer[16...] is the body, which is padded to 4 bytes
    expect(buffer[16...]).to eq(body)
  end

  describe "#finalize_plain" do
    it "ensures client id exists" do
      mtproto = Proton::MTProto::Encrypted.build.finish(auth_key)

      mtproto.push(request)
      buffer = mtproto.finalize_plain

      # salt comes first, it's zero by default.
      expect(buffer[0...8]).to eq(Bytes[0, 0, 0, 0, 0, 0, 0, 0])

      # client_id should be random
      expect(buffer[8...16]).not_to eq(Bytes[0, 0, 0, 0, 0, 0, 0, 0])

      # Only one message should remain.
      ensure_buffer_is_message(buffer[message_prefix_len...], request, 1_u8)
    end
  end
end
