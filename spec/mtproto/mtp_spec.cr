require "../spec_helper"

include Proton::TL

MESSAGE_PREFIX_LEN   = 8 + 8
GZIP_PACKED_HEADER   = Bytes[0xa1, 0xcf, 0x72, 0x30]
MSG_CONTAINER_HEADER = Bytes[0xdc, 0xf8, 0xf1, 0x73]

REQUEST   = "Hey!".to_slice
REQUEST_B = "Bye!".to_slice

Spectator.describe Proton::MTProto::MtpPlain do
  describe "#push" do
    subject(mtp) { described_class.new }
    let(request) { "Hey!".to_slice }

    it "only allows one push at a time" do
      expect(mtp.push(request)).not_to eq(nil)
      expect(mtp.push(request)).to eq(nil)
    end
  end

  describe "#finalize" do
    subject(mtp) { described_class.new }
    let(request) { "Hey!".to_slice }

    it "should clear the buffer" do
      mtp.push(request)
      expect(mtp.finalize.size).to eq(24)

      mtp.push(request)
      expect(mtp.finalize.size).to eq(24)
    end
  end
end

Spectator.describe Proton::MTProto::MtpEncrypted do
  def ensure_buffer_is_message(buffer : Bytes, body : Bytes, seq_no : UInt8)
    # msg_id based on Time.local
    expect(buffer[0..7]).not_to eq(Bytes[0, 0, 0, 0, 0, 0, 0, 0])
    # the seq_no; ever increasing odd number
    expect(buffer[8..11]).to eq(Bytes[seq_no, 0, 0, 0])
    # the body size
    expect(buffer[12..15]).to eq(Bytes[body.size.to_u8, 0, 0, 0])
    # the rest of the body, padded to 4 bytes
    expect(buffer[16..]).to eq(body)
  end

  let(auth_key) { Bytes.new(256) }

  describe "#build" do
    subject { Proton::MTProto::MtpEncrypted.build }

    it "should be an instance of MtpEncrypted::Builder" do
      is_expected.to be_a(Proton::MTProto::MtpEncrypted::Builder)
    end

    it "should generate a new instance of MTProto::MtpEncrypted" do
      expect(subject.finish(auth_key)).to be_a(Proton::MTProto::MtpEncrypted)
    end

    it "allows for configuration" do
      # One with defaults
      finished1 = subject.finish(auth_key)

      subject.time_offset = 999
      subject.first_salt = Int64::MAX
      subject.compression_threshold = 250
      finished2 = subject.finish(auth_key)

      expect(finished1.salts.first).not_to eq(finished2.salts.first)
      expect(finished1.time_offset).not_to eq(finished2.time_offset)
      expect(finished1.compression_threshold).not_to eq(finished2.compression_threshold)
    end
  end

  describe "#correct_time_offset" do
    subject { Proton::MTProto::MtpEncrypted.build.finish(auth_key) }
    let(msg_id_1) { 5255558249536552960 } # no offset
    let(msg_id_2) { 5255558271011389440 } # 5 sec offset
    let(time) { Time.local(2008, 10, 10, 10, 10, 10) }

    it "given a valid message id, gives a correct time offset" do
      Timecop.freeze(time) do
        expect(subject.correct_time_offset(msg_id_1)).to eq(0)
        expect(subject.correct_time_offset(msg_id_2)).to eq(5)
      end
    end
  end

  describe "#get_new_msg_id" do
    subject { Proton::MTProto::MtpEncrypted.build.finish(auth_key) }
    let(msg_id_1) { 5255558249536552960 } # no offset
    let(msg_id_2) { 5255558271011389440 } # 5 sec offset
    let(time) { Time.local(2008, 10, 10, 10, 10, 10) }

    it "returns a new message id" do
      Timecop.freeze(time) do
        expect(subject.get_new_msg_id).to eq(5255558249536552960)
        Timecop.travel(time + 5.seconds)
        expect(subject.get_new_msg_id).to eq(5255558271011389440)
      end
    end
  end

  describe "#get_seq_no" do
    subject { Proton::MTProto::MtpEncrypted.build.finish(auth_key) }
    let(seq_no) { subject.get_seq_no(content_related) }

    provided content_related = false, it: "returns the current sequence number" do
      expect(seq_no).to eq(0)
      expect(seq_no).to eq(0)
    end

    provided content_related = true, it: "increments the sequence number" do
      expect(seq_no).to eq(1)
    end

    it "should return only odd numbers" do
      expect(subject.get_seq_no(true)).to eq(1)
      expect(subject.get_seq_no(true)).to eq(3)
      expect(subject.get_seq_no(true)).to eq(5)
    end
  end

  describe "#serialize_msg" do
    subject { Proton::MTProto::MtpEncrypted.build.finish(auth_key) }
    let(msg_id) { 5255558249536552960 } # no offset
    let(time) { Time.local(2008, 10, 10, 10, 10, 10) }

    it "should insert a given message into the buffer" do
      subject.serialize_msg(REQUEST, true)
      ensure_buffer_is_message(subject.buffer.to_slice, REQUEST, 1u8)
    end

    it "should return a valid message id" do
      Timecop.freeze(time) do
        to_check = subject.serialize_msg(REQUEST_B, true)
        expect(to_check).to eq(msg_id)
      end
    end
  end

  describe "#push" do
    subject { Proton::MTProto::MtpEncrypted.build.finish(auth_key) }

    it "should push a small request to the internal buffer" do
    end
  end

  describe "#finalize_plain" do
    let(auth_key) { Bytes.new(256) }
    subject(mtproto) { described_class.build.finish(auth_key) }

    after_each { auth_key.clear }

    it "should have salt and client id" do
      mtproto.push(REQUEST)
      buffer = mtproto.finalize_plain

      # salt comes first, it's zero by default.
      expect(buffer[0..7]).to eq(Bytes[0, 0, 0, 0, 0, 0, 0, 0])

      # client_id should be random
      expect(buffer[8..15]).not_to eq(Bytes[0, 0, 0, 0, 0, 0, 0, 0])

      # only one message should remain
      ensure_buffer_is_message(buffer[MESSAGE_PREFIX_LEN..], REQUEST, 1_u8)
    end

    it "should correctly serialize a single message" do
      expect(mtproto.push(REQUEST)).not_to be_nil

      buffer = mtproto.finalize_plain[MESSAGE_PREFIX_LEN..]

      ensure_buffer_is_message(buffer, REQUEST, 1_u8)
    end

    it "should correctly serialize multiple messages" do
      expect(mtproto.push(REQUEST)).not_to be_nil
      expect(mtproto.push(REQUEST_B)).not_to be_nil

      buffer = mtproto.finalize_plain[MESSAGE_PREFIX_LEN..]

      # buffer[0..7] are the message id
      expect(buffer[0..7]).not_to eq(Bytes[0, 0, 0, 0, 0, 0, 0, 0])

      # buffer[8..11] is the seq_no, maybe-increasing even number.
      # after two messages (1, 3) the next non-content related is 4.
      expect(buffer[8..11]).to eq(Bytes[4, 0, 0, 0])
      # buffer[12..15] is the bytes, the len of the body
      expect(buffer[12..15]).to eq(Bytes[48, 0, 0, 0])

      # buffer[16..19] is the constructor id of the container
      expect(buffer[16..19]).to eq(MSG_CONTAINER_HEADER)
      # buffer[20..23] is how many messages are included
      expect(buffer[20..23]).to eq(Bytes[2, 0, 0, 0])

      # buffer[24..43] is the first message
      ensure_buffer_is_message(buffer[24..43], REQUEST, 1_u8)
      # buffer[44..] is the second message
      ensure_buffer_is_message(buffer[44..], REQUEST_B, 3_u8)
    end

    it "should correctly serialize a single large message" do
      mtproto.compression_threshold = nil
      data = Bytes.new(768 * 1024, 0x7f_u8)

      expect(mtproto.push(data)).not_to be_nil

      buffer = mtproto.finalize_plain[MESSAGE_PREFIX_LEN..]
      expect(buffer.size).to eq(data.size + 16)
    end

    it "should correctly serialize multiple large messages" do
      mtproto.compression_threshold = nil
      data = Bytes.new(768 * 1024, 0x7f_u8)

      expect(mtproto.push(data)).not_to be_nil
      expect(mtproto.push(data)).to be_nil

      # No container should be used, only the `salt` + `client_id` (16 bytes) should count.
      buffer = mtproto.finalize_plain[MESSAGE_PREFIX_LEN..]
      expect(buffer.size).to eq(data.size + 16)
    end

    it "should raise on a too large request" do
      expect { mtproto.push(Bytes.new(2 * 1024 * 1024, 0)) }.to raise_error("request is too large")
    end

    it "should raise on a non padded request" do
      expect { mtproto.push(Bytes[1, 2, 3]) }.to raise_error("incorrect padding")
    end

    it "should honor no compression threshold" do
      mtproto.compression_threshold = nil
      data = Bytes.new(512 * 1024, 0)

      mtproto.push(data)
      buffer = mtproto.finalize_plain

      expect(buffer.in_groups_of(4, 0_u8)).not_to contain(GZIP_PACKED_HEADER.to_a)
    end

    it "should should not compress if content is under the compression threshold" do
      mtproto.compression_threshold = UInt32.new(768 * 1024)
      mtproto.push(Bytes.new(512 * 1024, 0))
      buffer = mtproto.finalize_plain
      expect(buffer.in_groups_of(4, 0_u8)).not_to contain(GZIP_PACKED_HEADER.to_a)
    end

    it "should compress if content is over the compression threshold" do
      mtproto.compression_threshold = UInt32.new(256 * 1024)
      mtproto.push(Bytes.new(512 * 1024, 0))
      buffer = mtproto.finalize_plain
      expect(buffer.in_groups_of(4, 0_u8)).to contain(GZIP_PACKED_HEADER.to_a)
    end

    it "should honor the default compression threshold" do
      mtproto.push(Bytes.new(512 * 1024, 0))
      buffer = mtproto.finalize_plain
      expect(buffer.in_groups_of(4, 0_u8)).to contain(GZIP_PACKED_HEADER.to_a)
    end
  end
end
