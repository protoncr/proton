module Proton
  module MTProto
    class MtpEncrypted < MtpBase
      # How many future salts to fetch or have stored at a given time.
      #
      # Not an `usize` because the API expects a signed `i32`. Should be more than two because the
      # code expects to fetch more salts when going from two to one.
      NUM_FUTURE_SALTS = 64

      # When switching to a different salt, how many seconds must have passed since its `valid_since`.
      #
      # Used to prevent small fluctuations in the system clock.
      SALT_USE_DELAY = 60

      # The first actual message comes after `salt`, `client_id` (8 bytes each).
      HEADER_LEN = 16_u32

      # The message header for the container occupies the size of the message header
      # (`msg_id`, `seq_no` and `size`) followed by the container header (`constructor`, `len`).
      CONTAINER_HEADER_LEN = UInt32.new((8 + 4 + 4) + (4 + 4))

      UPDATE_IDS = [
        TL::Root::UpdateShortMessage.constructor_id,
        TL::Root::UpdateShortChatMessage.constructor_id,
        TL::Root::UpdateShort.constructor_id,
        TL::Root::UpdatesCombined.constructor_id,
        TL::Root::Updates.constructor_id,
        TL::Root::UpdateShortSentMessage.constructor_id,
      ]

      # The authorization key to use to encrypt payload.
      @auth_key : Crypto::AuthKey

      # The time offset from the server's time, in seconds.
      getter time_offset : Int32

      # Salts that may be used when encrypting payload, sorted by valid date descending (so the last one is the one
      # that can be used now).
      getter salts : Array(TL::Root::FutureSalt)

      # The `now` received from future salts along with the instant when it occured.
      #
      # Used to accurately determine when salts become valid.
      getter start_salt_time : Tuple(Int32, Time::Span)?

      # The secure, random identifier for this instance.
      getter client_id : Int64

      # The current message sequence number.
      getter sequence : Int32

      # The ID of the last message.
      getter last_msg_id : Int64

      # Identifiers that need to be acknowledged to the server.
      #
      # A [Content-related Message] is "a message requiring an explicit
      # acknowledgment. These include all the user and many service messages,
      # virtually all with the exception of containers and acknowledgments."
      #
      # [Content-related Message]: https://core.telegram.org/mtproto/description#content-related-message
      getter pending_ack : Array(Int64)

      # Temporary result bodies to Remote Procedure Calls.
      getter rpc_results : Array(Tuple(MsgId, Bytes | RequestError))

      # Temporary updates that came in a response.
      getter updates : Array(Bytes)

      # Buffer were requests are pushed to.
      getter buffer : IO::Memory

      # How many messages are there in the buffer.
      getter msg_count : UInt32

      # If present, the threshold in bytes at which a message will be
      # considered large enough to attempt compressing it. Otherwise,
      # outgoing messages will never be compressed.
      property compression_threshold : UInt32?

      def initialize(
        @auth_key : Crypto::AuthKey,
        @time_offset : Int32,
        @salts : Array(TL::Root::FutureSalt),
        @start_salt_time : Tuple(Int32, Time::Span)?,
        @client_id : Int64,
        @sequence : Int32,
        @last_msg_id : Int64,
        @pending_ack : Array(Int64),
        @compression_threshold : UInt32?,
        @rpc_results : Array(Tuple(MsgId, Bytes | RequestError)),
        @updates : Array(Bytes),
        @buffer : IO::Memory,
        @msg_count : UInt32
      )
      end

      def self.build
        Builder.new(
          time_offset: 0,
          first_salt: 0,
          compression_threshold: DEFAULT_COMPRESSION_THRESHOLD,
        )
      end

      # The authorization key used for encryption and decryption.
      def auth_key
        @auth_key.to_bytes
      end

      # Correct our time offset based on a known valid message ID.
      def correct_time_offset(msg_id : Int64)
        now = Time.local.to_unix.to_i
        correct = (msg_id >> 32).to_i32
        @time_offset = correct - now
      end

      # Generates a new unique message ID based on the current
      # time (in ms) since epoch, applying a known time offset.
      def get_new_msg_id
        now = Time.local.to_unix

        seconds = (now.seconds + @time_offset.seconds)
        total_seconds = seconds.total_seconds.to_u64
        nanoseconds = seconds.nanoseconds.to_u64

        new_msg_id = ((total_seconds << 32) | (nanoseconds << 2)).to_i64

        if @last_msg_id >= new_msg_id
          new_msg_id = @last_msg_id + 4
        end

        @last_msg_id = MsgId.new(new_msg_id)
        MsgId.new(new_msg_id)
      end

      # Generates the next sequence number depending on whether
      # it should be for a content-related query or not.
      def get_seq_no(content_related : Bool)
        if content_related
          @sequence += 2
          @sequence - 1
        else
          @sequence
        end
      end

      def serialize_msg(body : Bytes, content_related : Bool) : MsgId
        msg_id = self.get_new_msg_id

        @buffer.write_bytes(msg_id, IO::ByteFormat::LittleEndian)
        @buffer.write_bytes(self.get_seq_no(content_related), IO::ByteFormat::LittleEndian)
        @buffer.write_bytes(body.size.to_i32, IO::ByteFormat::LittleEndian)
        @buffer.write(body)

        @msg_count += 1
        MsgId.new(msg_id)
      end

      # `#finalize`, but without encryption.
      def finalize_plain : Bytes
        if @msg_count == 0
          return Bytes.empty
        end

        if @msg_count == 1
          @buffer = IO::Memory.new(@buffer.to_slice[CONTAINER_HEADER_LEN..])
        end

        # Rewind the buffer and fill the first 16 bytes
        # with the salt and client id
        @buffer.rewind
        @buffer.write_bytes(@salts.last?.try(&.salt) || 0_i64, IO::ByteFormat::LittleEndian) # 8 bytes
        @buffer.write_bytes(@client_id, IO::ByteFormat::LittleEndian)                        # 8 bytes

        if @msg_count != 1
          # Give the container its message ID and sequence number.

          # Manually `serialize_msg` because the container body was already written.
          @buffer.write_bytes(self.get_new_msg_id, IO::ByteFormat::LittleEndian)
          @buffer.write_bytes(self.get_seq_no(false), IO::ByteFormat::LittleEndian)

          # + 8 because it has to include the constructor ID and length (4 bytes each).
          len = (@buffer.size - HEADER_LEN - CONTAINER_HEADER_LEN + 8).to_i32
          @buffer.write_bytes(len, IO::ByteFormat::LittleEndian)

          @buffer.write_bytes(MessageContainer.constructor_id, IO::ByteFormat::LittleEndian)
          @buffer.write_bytes(@msg_count, IO::ByteFormat::LittleEndian)
        end

        @msg_count = 0
        @buffer.to_slice
      end

      def process_message(message : Message)
        if message.requires_ack?
          @pending_ack << message.msg_id
        end

        case message.constructor_id
        when RpcResult.constructor_id
          # Response to an RPC query
          self.handle_rpc_result(message)
        when TL::Root::MsgsAck.constructor_id
          # Acknowledgment of Receipt
          self.handle_ack(message)
        when TL::Root::BadMsgNotification.constructor_id,
             TL::Root::BadServerSalt.constructor_id
          # Notice of Ignored Error Message
          self.handle_bad_notfication(message)
        when TL::Root::MsgsStateReq.constructor_id
          # Request for Message Status Information
          self.handle_state_req(message)
        when TL::Root::MsgsStateInfo.constructor_id
          # Informational Message regarding Status of Messages
          self.handle_state_info(message)
        when TL::Root::MsgsAllInfo.constructor_id
          # Voluntary Communication of Status of Messages
          self.handle_msg_all(message)
        when TL::Root::MsgDetailedInfo.constructor_id,
             TL::Root::MsgNewDetailedInfo.constructor_id
          # Extended Voluntary Communication of Status of One Message
          self.handle_detailed_info(message)
        when TL::Root::MsgResendReq.constructor_id
          # Explicit Request to Re-Send Messages & Explicit Request to Re-Send Answers
          self.handle_msg_resend(message)
        when TL::Root::FutureSalt.constructor_id
          # Request for several future salts
          self.handle_future_salt(message)
        when TL::Root::FutureSalts.constructor_id
          # Response to a request for several future salts
          self.handle_future_salts(message)
        when TL::Root::Pong.constructor_id
          # Ping Messages (PING/PONG)
          self.handle_pong(message)
        when TL::Root::DestroySessionOk.constructor_id,
             TL::Root::DestroySessionNone.constructor_id
          # Request to destroy the session
          self.handle_destroy_session(message)
        when TL::Root::NewSessionCreated.constructor_id
          # New Session Creation Notification
          self.handle_new_session_created(message)
        when MessageContainer.constructor_id
          # Container of Messages
          self.handle_container(message)
        when MessageCopy.constructor_id
          # Message copies
          self.handle_msg_copy(message)
        when GzipPacked.constructor_id
          # Packed object
          self.handle_gzip_packed(message)
        when TL::Root::HttpWait.constructor_id
          # HTTP Wait/Long Poll
          self.handle_http_wait(message)
        else
          self.handle_update(message)
        end
      end

      # **[Response to an RPC query]**
      #
      # A response to an RPC query is normally wrapped as follows:
      #
      # ```tl
      # rpc_result#f35c6d01 req_msg_id:long result:Object = RpcResult;
      # ```
      #
      # Here `req_msg_id` is the identifier of the message sent by the other
      # party and containing an RPC query. This way, the recipient knows that
      # the result is a response to the specific RPC query in question.
      #
      # At the same time, this response serves as acknowledgment of the other
      # party's receipt of the `req_msg_id` message.
      #
      # Note that the response to an RPC query must also be acknowledged. Most
      # frequently, this coincides with the transmission of the next message
      # (which may have a container attached to it carrying a service message
      # with the acknowledgment).
      #
      # **[RPC Error]**
      #
      # The result field returned in response to any RPC query may also
      # contain an error message in the following format:
      #
      # ```tl
      # rpc_result#f35c6d01 req_msg_id:long result:Object = RpcResult;
      # ```
      #
      # **[Cancellation of an RPC Query]**
      #
      # In certain situations, the client does not want to receive a response
      # to an already transmitted RPC query, for example because the response
      # turns out to be long and the client has decided to do without it
      # because of insufficient link capacity. Simply interrupting the TCP
      # connection will not have any effect because the server would re-send
      # the missing response at the first opportunity. Therefore, the client
      # needs a way to cancel receipt of the RPC response message, actually
      # acknowledging its receipt prior to it being in fact received, which
      # will settle the server down and prevent it from re-sending the response.
      # However, the client does not know the RPC response's msg_id prior to
      # receiving the response; the only thing it knows is the req_msg_id.
      # i.e. the msg_id of the relevant RPC query. Therefore, a special query
      # is used:
      #
      # ```tl
      # rpc_drop_answer#58e4a740 req_msg_id:long = RpcDropAnswer;
      # ```
      #
      # The response to this query returns as one of the following messages
      # wrapped in `rpc_result` and requiring an acknowledgment:
      #
      # ```tl
      # rpc_answer_unknown#5e2ad36e = RpcDropAnswer;
      # rpc_answer_dropped_running#cd78e586 = RpcDropAnswer;
      # rpc_answer_dropped#a43ad8b7 msg_id:long seq_no:int bytes:int = RpcDropAnswer;
      # ```
      #
      # The first version of the response is used if the server remembers
      # nothing of the incoming req_msg_id (if it has already been responded
      # to, for example). The second version is used if the response was
      # canceled while the RPC query was being processed (where the RPC query
      # itself was still fully processed); in this case, the same
      # `rpc_answer_dropped_running` is also returned in response to the
      # original query, and both of these responses require an acknowledgment
      # from the client. The final version means that the RPC response was
      # removed from the server's outgoing queue, and its `msg_id`, `seq_no`,
      # and length in `bytes` are transmitted to the client.
      #
      # Note that `rpc_answer_dropped_running` and `rpc_answer_dropped` serve
      # as acknowledgments of the server's receipt of the original query (the
      # same one, the response to which we wish to forget). In addition, same
      # as for any RPC queries, any response to `rpc_drop_answer` is an
      # acknowledgment for `rpc_drop_answer` itself.
      #
      # As an alternative to using `rpc_drop_answer`, a new session may be
      # created after the connection is reset and the old session is removed
      # through `destroy_session`.
      #
      # [Response to an RPC query]: https://core.telegram.org/mtproto/service_messages#response-to-an-rpc-query
      # [RPC Error]: https://core.telegram.org/mtproto/service_messages#rpc-error
      # [Cancellation of an RPC Query]: https://core.telegram.org/mtproto/service_messages#cancellation-of-an-rpc-query
      def handle_rpc_result(message : Message)
        rpc_result = RpcResult.tl_deserialize(IO::Memory.new(message.body))
        req_msg_id = rpc_result.req_msg_id
        result = rpc_result.result
        msg_id = MsgId.new(req_msg_id)

        # Any error during a RPC result will be given to the user,
        # which means this method itself is doing its job `Ok`.
        inner_constructor = rpc_result.inner_constructor

        case inner_constructor
        when TL::Root::RpcError.constructor_id
          # RPC Error
          err = TL::Root::RpcError.tl_deserialize(IO::Memory.new(result))
          @rpc_results.push({msg_id, RpcError.from_tl(err)})
        when TL::Root::RpcAnswerUnknown.constructor_id
          # Cancellation of an RPC Query
          # The `msg_id` corresponds to the `rpc_drop_answer` request.

        when TL::Root::RpcAnswerDroppedRunning.constructor_id
          # We will receive two `rpc_result`, one with the `msg_id` of
          # `rpc_drop_answer` request and other for the original RPC.

        when TL::Root::RpcAnswerDropped.constructor_id
          # "the RPC response was removed from the server's outgoing
          # queue, and its msg_id, seq_no, and length in bytes are
          # transmitted to the client."

        when GzipPacked.constructor_id
          # Response to an RPC query
          # Telegram shouldn't send compressed errors (the overhead
          # would probably outweight the benefits) so we don't check
          # that the decompressed payload is an error or answer drop.

          body = GzipPacked.tl_deserialize(IO::Memory.new(result))
          gzip = body.decompress
          self.store_own_updates(gzip)
        else
          self.store_own_updates(result.to_slice)
          @rpc_results.push({msg_id, result})
        end

        nil
      rescue ex
        @rpc_results.push({msg_id.not_nil!, RequestError.from(ex)})
        nil
      end

      # Updates produced by `rpc_result` must be considered as any other updates, since they can
      # change the `pts`. If this wasn't done, eventually higher levels would find gaps.
      #
      # Users may also be interested in handling updates produced by the client as if they were
      # like any other.
      def store_own_updates(body : Bytes)
        body_id = IO::ByteFormat::LittleEndian.decode(UInt32, body[0..3])

        if UPDATE_IDS.includes?(body_id)
          @updates.push(body)
        end

        nil
      rescue
        # Ignore
      end

      # **[Acknowledgment of Receipt]**
      #
      # Receipt of virtually all messages (with the exception of some purely
      # service ones as well as the plain-text messages used in the protocol
      # for creating an authorization key) must be acknowledged.
      #
      # This requires the use of the following service message (not requiring
      # an acknowledgment):
      #
      # ```tl
      # msgs_ack#62d6b459 msg_ids:Vector long = MsgsAck;
      # ```
      #
      # A server usually acknowledges the receipt of a message from a client
      # (normally, an RPC query) using an RPC response. If a response is a
      # long time coming, a server may first send a receipt acknowledgment,
      # and somewhat later, the RPC response itself.
      #
      # A client normally acknowledges the receipt of a message from a server
      # (usually, an RPC response) by adding an acknowledgment to the next RPC
      # query if it is not transmitted too late (if it is generated, say,
      # 60-120 seconds following the receipt of a message from the server).
      # However, if for a long period of time there is no reason to send
      # messages to the server or if there is a large number of
      # unacknowledged messages from the server (say, over 16), the client
      # transmits a stand-alone acknowledgment.
      #
      # [Acknowledgment of Receipt]: https://core.telegram.org/mtproto/service_messages_about_messages#acknowledgment-of-receipt
      def handle_ack(message : Message)
        # TODO: Notify about this somehow
        ack = TL::Root::MsgsAck.tl_deserialize(IO::Memory.new(message.body))
        nil
      end

      # **[Notice of Ignored Error Message]**
      #
      # In certain cases, a server may notify a client that its incoming
      # message was ignored for whatever reason. Note that such a notification
      # cannot be generated unless a message is correctly decoded by the
      # server.
      #
      # ```tl
      # bad_msg_notification#a7eff811 bad_msg_id:long bad_msg_seqno:int error_code:int = BadMsgNotification;
      # bad_server_salt#edab447b bad_msg_id:long bad_msg_seqno:int error_code:int new_server_salt:long = BadMsgNotification;
      # ```
      #
      # Here, `error_code` can also take on the following values:
      #
      # * 16: `msg_id` too low (most likely, client time is wrong; it would
      #   be worthwhile to synchronize it using msg_id notifications and re-
      #   send the original message with the “correct” msg_id or wrap it in a
      #   container with a new msg_id if the original message had waited too
      #   long on the client to be transmitted)
      # * 17: `msg_id` too high (similar to the previous case, the client time
      #   has to be synchronized, and the message re-sent with the correct
      #   `msg_id`)
      # * 18: incorrect two lower order `msg_id` bits (the server expects
      #   client message `msg_id` to be divisible by 4)
      # * 19: container `msg_id` is the same as `msg_id` of a previously
      #   received message (this must never happen)
      # * 20: message too old, and it cannot be verified whether the server
      #   has received a message with this `msg_id` or not
      # * 32: `msg_seqno` too low (the server has already received a message
      #   with a lower `msg_id` but with either a higher or an equal and odd
      #   `seqno`)
      # * 33: `msg_seqno` too high (similarly, there is a message with a
      #   higher `msg_id` but with either a lower or an equal and odd `seqno`)
      # * 34: an even `msg_seqno` expected (irrelevant message), but odd
      #   received
      # * 35: odd `msg_seqno` expected (relevant message), but even received
      # * 48: incorrect server salt (in this case, the `bad_server_salt`
      #   response is received with the correct salt, and the message is to be
      #   re-sent with it)
      # * 64: invalid container.
      #
      # The intention is that `error_code` values are grouped
      # (`error_code >> 4`): for example, the codes `0x40 - 0x4f` correspond
      # to errors in container decomposition.
      #
      # Notifications of an ignored message do not require acknowledgment
      # (i.e., are irrelevant).
      #
      # **Important**: if `server_salt` has changed on the server or if client
      # time is incorrect, any query will result in a notification in the
      # above format. The client must check that it has, in fact, recently
      # sent a message with the specified msg_id, and if that is the case,
      # update its time correction value (the difference between the client's
      # and the server's clocks) and the server salt based on msg_id and the
      # `server_salt` notification, so as to use these to (re)send future
      # messages. In the meantime, the original message (the one that caused
      # the error message to be returned) must also be re-sent with a better
      # `msg_id` and/or `server_salt`.
      #
      # In addition, the client can update the `server_salt` value used to
      # send messages to the server, based on the values of RPC responses or
      # containers carrying an RPC response, provided that this RPC response
      # is actually a match for the query sent recently. (If there is doubt,
      # it is best not to update since there is risk of a replay attack).
      #
      # [Notice of Ignored Error Message]: https://core.telegram.org/mtproto/service_messages_about_messages#notice-of-ignored-error-message
      def handle_bad_notfication(message : Message)
        x = TL::Root::TypeBadMsgNotification.tl_deserialize(IO::Memory.new(message.body))
        bad_msg = case x
                  when TL::Root::BadMsgNotification
                    x
                  when TL::Root::BadServerSalt
                    @rpc_results.push({MsgId.new(x.bad_msg_id), BadMessageError.new(x.error_code)})

                    @salts.clear
                    @salts.push(TL::Root::FutureSalt.new(
                      valid_since: 0,
                      valid_until: Int32::MAX,
                      salt: x.new_server_salt,
                    ))

                    # Try enqueuing a request to get future salts, in order to prevent this from happening for longer.
                    if self.push(TL::Root::GetFutureSalts.new(num: NUM_FUTURE_SALTS).to_bytes)
                      Log.info { "got bad salt; asking for more salts" }
                    else
                      Log.info { "got bad salt, but can't ask for future salts because the buffer is full" }
                    end

                    return
                  else
                    raise "unreachable"
                  end

        @rpc_results.push({MsgId.new(x.bad_msg_id), BadMessageError.new(x.error_code)})
        case x.error_code
        when 16
          # Sent msg_id was too low (our time_offset is wrong)
          self.correct_time_offset(message.msg_id)
        when 17
          # Sent msg_id was too high (our time_offset is wrong)
          self.correct_time_offset(message.msg_id)
        when 32
          # Sent seq_no was too low. Bump it by some large-ish value.
          # TODO: Start with a fresh session rather than guessing.
          @sequence += 64
        when 33
          # Sent seq_no was too high (this doesn't seem to occur in practice)
          # TODO: Start with a fresh session rather than guessing.
          @sequence -= 16
        else
          # Just notify about it.
        end

        nil
      end

      # **[Request for Message Status Information]**
      #
      # If either party has not received information on the status of its
      # outgoing messages for a while, it may explicitly request it from the
      # other party:
      #
      # ```tl
      # msgs_state_req#da69fb52 msg_ids:Vector long = MsgsStateReq;
      # ```
      #
      # [Request for Message Status Information]: https://core.telegram.org/mtproto/service_messages_about_messages#request-for-message-status-information
      def handle_state_req(message : Message)
        # TODO: Implement
        x = TL::Root::MsgsStateReq.tl_deserialize(IO::Memory.new)
        Log.info { "got state request for #{x.msg_ids.size} messages" }
        nil
      end

      # **[Informational Message regarding Status of Messages]**
      #
      # ```tl
      # msgs_state_info#04deb57d req_msg_id:long info:string = MsgsStateInfo;
      # ```
      #
      # Here, `info` is a string that contains exactly one byte of message
      # status for each message from the incoming `msg_ids` list:
      #
      # * 1 = nothing is known about the message (`msg_id` too low, the other
      #   party may have forgotten it)
      # * 2 = message not received (`msg_id` falls within the range of stored
      #   identifiers; however, the other party has certainly not received a
      #   message like that)
      # * 3 = message not received (`msg_id` too high; however, the other
      #   party has certainly not received it yet)
      # * 4 = message received (note that this response is also at the same
      #   time a receipt acknowledgment)
      # * +8 = message already acknowledged
      # * +16 = message not requiring acknowledgment
      # * +32 = RPC query contained in message being processed or processing
      #   already complete
      # * +64 = content-related response to message already generated
      # * +128 = other party knows for a fact that message is already received
      #
      # This response does not require an acknowledgment. It is an
      # acknowledgment of the relevant `msgs_state_req`, in and of itself.
      #
      # Note that if it turns out suddenly that the other party does not have
      # a message that looks like it has been sent to it, the message can
      # simply be re-sent. Even if the other party should receive two copies
      # of the message at the same time, the duplicate will be ignored.
      # (If too much time has passed, and the original `msg_id` is not longer
      # valid, the message is to be wrapped in `msg_copy`).
      #
      # [Informational Message regarding Status of Messages]: https://core.telegram.org/mtproto/service_messages_about_messages#informational-message-regarding-status-of-messages
      def handle_state_info(message : Message)
        # TODO: Implement
        x = TL::Root::MsgsStateInfo.tl_deserialize(IO::Memory.new)
        nil
      end

      # **[Voluntary Communication of Status of Messages]**
      #
      # Either party may voluntarily inform the other party of the status of
      # the messages transmitted by the other party.
      #
      # ```tl
      # msgs_all_info#8cc0d131 msg_ids:Vector long info:string = MsgsAllInfo;
      # ```
      #
      # All message codes known to this party are enumerated, with the
      # exception of those for which the +128 and the +16 flags are set.
      # However, if the +32 flag is set but not +64, then the message status
      # will still be communicated.
      #
      # This message does not require an acknowledgment.
      #
      # [Voluntary Communication of Status of Messages]: https://core.telegram.org/mtproto/service_messages_about_messages#voluntary-communication-of-status-of-messages
      def handle_msg_all(message : Message)
        # TODO: Implement
        x = TL::Root::MsgsAllInfo.tl_deserialize(IO::Memory.new)
        nil
      end

      # **[Extended Voluntary Communication of Status of One Message]**
      #
      # Normally used by the server to respond to the receipt of a duplicate
      # `msg_id`, especially if a response to the message has already been
      # generated and the response is large. If the response is small, the
      # server may re-send the answer itself instead. This message can also
      # be used as a notification instead of resending a large message.
      #
      # ```tl
      # msg_detailed_info#276d3ec6 msg_id:long answer_msg_id:long bytes:int status:int = MsgDetailedInfo;
      # msg_new_detailed_info#809db6df answer_msg_id:long bytes:int status:int = MsgDetailedInfo;
      # ```
      #
      # The second version is used to notify of messages that were created on
      # the server not in response to an RPC query (such as notifications of
      # new messages) and were transmitted to the client some time ago, but
      # not acknowledged.
      #
      # Currently, `status` is always zero. This may change in future.
      #
      # This message does not require an acknowledgment.
      #
      # [Extended Voluntary Communication of Status of One Message]: https://core.telegram.org/mtproto/service_messages_about_messages#extended-voluntary-communication-of-status-of-one-message
      def handle_detailed_info(message : Message)
        # TODO: https://github.com/telegramdesktop/tdesktop/blob/8f82880b938e06b7a2a27685ef9301edb12b4648/Telegram/SourceFiles/mtproto/connection.cpp#L1790-L1820
        # TODO: https://github.com/telegramdesktop/tdesktop/blob/8f82880b938e06b7a2a27685ef9301edb12b4648/Telegram/SourceFiles/mtproto/connection.cpp#L1822-L1845
        x = TL::Root::TypeMsgDetailedInfo.tl_deserialize(IO::Memory.new)

        case x
        when TL::Root::MsgDetailedInfo
          @pending_ack.push(x.answer_msg_id)
        when TL::Root::MsgNewDetailedInfo
          @pending_ack.push(x.answer_msg_id)
        end

        nil
      end

      # **[Explicit Request to Re-Send Messages]**
      #
      # ```tl
      # msg_resend_req#7d861a08 msg_ids:Vector long = MsgResendReq;
      # ```
      #
      # The remote party immediately responds by re-sending the requested
      # messages, normally using the same connection that was used to transmit
      # the query. If at least one message with requested msg_id does not
      # exist or has already been forgotten, or has been sent by the
      # requesting party (known from parity), `MsgsStateInfo` is returned for
      # all messages requested as if the `MsgResendReq` query had been a
      # `MsgsStateReq` query as well.
      #
      # **[Explicit Request to Re-Send Answers]**
      #
      # ```tl
      # msg_resend_ans_req#8610baeb msg_ids:Vector long = MsgResendReq;
      # ```
      #
      # The remote party immediately responds by re-sending answers to the
      # requested messages, normally using the same connection that was used
      # to transmit the query. `MsgsStateInfo` is returned for all messages
      # requested as if the `MsgResendReq` query had been a MsgsStateReq query
      # as well.
      #
      # [Explicit Request to Re-Send Answers]: https://core.telegram.org/mtproto/service_messages_about_messages#explicit-request-to-re-send-answers
      # [Explicit Request to Re-Send Messages]: https://core.telegram.org/mtproto/service_messages_about_messages#explicit-request-to-re-send-messages
      def handle_msg_resend(message : Message)
        # TODO implement
        # `msg_resend_ans_req` seems to never occur (it was even missing from `mtproto.tl`)\
        x = TL::Root::TypeMsgResendReq.tl_deserialize(IO::Memory.new)
        nil
      end

      # **[Request for several future salts]**
      #
      # The client may at any time request from the server several (between
      # 1 and 64) future server salts together with their validity periods.
      # Having stored them in persistent memory, the client may use them to
      # send messages in the future even if he changes sessions (a server
      # salt is attached to the authorization key rather than being
      # session-specific).
      #
      # ```tl
      # get_future_salts#b921bd04 num:int = FutureSalts;
      # future_salt#0949d9dc valid_since:int valid_until:int salt:long = FutureSalt;
      # future_salts#ae500895 req_msg_id:long now:int salts:vector future_salt = FutureSalts;
      # ```
      #
      # The client must check to see that the response's `req_msg_id` in fact
      # coincides with `msg_id` of the query for `get_future_salts`. The
      # server returns a maximum of `num` future server salts (may return
      # fewer). The response serves as the acknowledgment of the query and
      # does not require an acknowledgment itself.
      #
      # [Request for several future salts]: https://core.telegram.org/mtproto/service_messages#request-for-several-future-salts
      def handle_future_salts(message : Message)
        x = TL::Root::FutureSalts.tl_deserialize(IO::Memory.new)

        @rpc_results.push({MsgId.new(x.req_msg_id), message.body})

        @start_salt_time = {x.now, Time.monotonic}
        @salts = x.salts.sort_by { |s| -s.valid_since }.map { |s| s.as(TL::Root::FutureSalt) }

        Log.info { "got #{@salts.size} future salts" }

        nil
      end

      def handle_future_salt(message : Message)
        raise "No request should trigger a `future_salt` result"
      end

      # **[Ping Messages (PING/PONG)]**
      #
      # ```tl
      # ping#7abe77ec ping_id:long = Pong;
      # ```
      #
      # A response is usually returned to the same connection:
      #
      # ```tl
      # pong#347773c5 msg_id:long ping_id:long = Pong;
      # ```
      #
      # These messages do not require acknowledgments. A `pong` is
      # transmitted only in response to a `ping` while a `ping` can be
      # initiated by either side.
      #
      # **[Deferred Connection Closure + PING]**
      #
      # ```tl
      # ping_delay_disconnect#f3427b8c ping_id:long disconnect_delay:int = Pong;
      # ```
      #
      # Works like `ping`. In addition, after this is received, the server
      # starts a timer which will close the current connection
      # `disconnect_delay` seconds later unless it receives a new message of
      # the same type which automatically resets all previous timers. If the
      # client sends these pings once every 60 seconds, for example, it may
      # set `disconnect_delay` equal to 75 seconds.
      #
      # [Ping Messages (PING/PONG)]: https://core.telegram.org/mtproto/service_messages#ping-messages-ping-pong
      # [Deferred Connection Closure + PING]: https://core.telegram.org/mtproto/service_messages#deferred-connection-closure-ping
      def handle_pong(message : Message)
        x = TL::Root::Pong.tl_deserialize(IO::Memory.new)
        @rpc_results.push({MsgId.new(x.msg_id), message.body})
        nil
      end

      # **[Request to Destroy Session]**
      #
      # Used by the client to notify the server that it may forget the data
      # from a different session belonging to the same user (i.e. with the
      # same `auth_key_id`). The result of this being applied to the current
      # session is undefined.
      #
      # ```tl
      # destroy_session#e7512126 session_id:long = DestroySessionRes;
      # destroy_session_ok#e22045fc session_id:long = DestroySessionRes;
      # destroy_session_none#62d350c9 session_id:long = DestroySessionRes;
      # ```
      #
      # [Request to Destroy Session]: https://core.telegram.org/mtproto/service_messages#request-to-destroy-session
      def handle_destroy_session(message : Message)
        # TODO: Implement
        x = TL::Root::TypeDestroySessionRes.tl_deserialize(IO::Memory.new)
        nil
      end

      # **[New Session Creation Notification]**
      #
      # The server notifies the client that a new session (from the server's
      # standpoint) had to be created to handle a client message. If, after
      # this, the server receives a message with an even smaller `msg_id`
      # within the same session, a similar notification will be generated for
      # this `msg_id` as well. No such notifications are generated for high
      # `msg_id` values.
      #
      # ```tl
      # new_session_created#9ec20908 first_msg_id:long unique_id:long server_salt:long = NewSession
      # ```
      #
      # The `unique_id` parameter is generated by the server every time a
      # session is (re-)created.
      #
      # This notification must be acknowledged by the client. It is necessary,
      # for instance, for the client to understand that there is, in fact, a
      # "gap" in the stream of long poll notifications received from the
      # server (the user may have failed to receive notifications during some
      # period of time).
      #
      # Notice that the server may unilaterally destroy (close) any existing
      # client sessions with all pending messages and notifications, without
      # sending any notifications. This happens, for example, if the session
      # is inactive for a long time, and the server runs out of memory. If the
      # client at some point decides to send new messages to the server using
      # the old session, already forgotten by the server, such a "new session
      # created" notification will be generated. The client is expected to
      # handle such situations gracefully.
      #
      # [New Session Creation Notification]: https://core.telegram.org/mtproto/service_messages#new-session-creation-notification
      def handle_new_session_created(message : Message)
        x = TL::Root::NewSessionCreated.tl_deserialize(IO::Memory.new)

        @salts.clear
        @salts.push(TL::Root::FutureSalt.new(
          valid_since: 0,
          valid_until: Int32::MAX,
          salt: x.server_salt,
        ))

        nil
      end

      # **[Containers]**
      #
      # *Containers* are messages containing several other messages. Used
      # for the ability to transmit several RPC queries and/or service
      # messages at the same time, using HTTP or even TCP or UDP protocol.
      # A container may only be accepted or rejected by the other party as
      # a whole.
      #
      # **[Simple Container]**
      #
      # A simple container carries several messages as follows:
      #
      # ```tl
      # msg_container#73f1f8dc messages:vector message = MessageContainer;
      # ```
      #
      # Here message refers to any message together with its length and
      # `msg_id`:
      #
      # ```tl
      # message msg_id:long seqno:int bytes:int body:Object = Message;
      # ```
      #
      # `bytes` is the number of bytes in the body serialization.
      #
      # All messages in a container must have `msg_id` lower than that of the
      # container itself. A container does not require an acknowledgment and
      # may not carry other simple containers. When messages are re-sent,
      # they may be combined into a container in a different manner or sent
      # individually.
      #
      # Empty containers are also allowed. They are used by the server,
      # for example, to respond to an HTTP request when the timeout specified
      # in `http_wait` expires, and there are no messages to transmit.
      #
      # [Containers]: https://core.telegram.org/mtproto/service_messages#containers
      # [Simple Container]: https://core.telegram.org/mtproto/service_messages#simple-container
      def handle_container(message : Message)
        x = MessageContainer.tl_deserialize(IO::Memory.new)

        x.messages.each do |msg|
          self.process_message(msg)
        end

        nil
      end

      # **[Message Copies]**
      #
      # In some situations, an old message with a `msg_id` that is no longer
      # valid needs to be re-sent. Then, it is wrapped in a copy container:
      #
      # ```tl
      # msg_copy#e06046b2 orig_message:Message = MessageCopy;
      # ```
      #
      # Once received, the message is processed as if the wrapper were not
      # there. However, if it is known for certain that the message
      # `orig_message.msg_id` was received, then the new message is not
      # processed (while at the same time, it and `orig_message.msg_id`
      # are acknowledged). The value of `orig_message.msg_id` must be lower
      # than the container's `msg_id`.
      #
      # This is not used at this time, because an old message can be wrapped
      # in a simple container with the same result.
      #
      # [Message Copies]: https://core.telegram.org/mtproto/service_messages#message-copies
      def handle_msg_copy(message : Message)
        raise "msg_copy should not be used"
      end

      # **[Packed Object]**
      #
      # Used to replace any other object (or rather, a serialization thereof)
      # with its archived (gzipped) representation:
      #
      # ```tl
      # gzip_packed#3072cfa1 packed_data:string = Object;
      # ```
      #
      # At the present time, it is supported in the body of an RPC response
      # (i.e., as result in rpc_result) and generated by the server for a
      # limited number of high-level queries. In addition, in the future it
      # may be used to transmit non-service messages (i.e. RPC queries) from
      # client to server.
      #
      # [Packed Object]: https://core.telegram.org/mtproto/service_messages#packed-object
      def handle_gzip_packed(message : Message)
        x = GzipPacked.tl_deserialize(IO::Memory.new)

        msg = message.dup
        msg.body = x.decompress

        self.process_message(msg)

        nil
      end

      # **[HTTP Wait/Long Poll]**
      #
      # The following special service query not requiring an acknowledgement
      # (which must be transmitted only through an HTTP connection) is used to
      # enable the server to send messages in the future to the client using
      # HTTP protocol:
      #
      # ```tl
      # http_wait#9299359f max_delay:int wait_after:int max_wait:int = HttpWait;
      # ```
      #
      # When such a message (or a container carrying such a message) is
      # received, the server either waits `max_delay` milliseconds, whereupon
      # it forwards all the messages that it is holding on to the client if
      # there is at least one message queued in session (if needed, by placing
      # them into a container to which acknowledgments may also be added); or
      # else waits no more than `max_wait` milliseconds until such a message
      # is available. If a message never appears, an empty container is
      # transmitted.
      #
      # The `max_delay` parameter denotes the maximum number of milliseconds
      # that has elapsed between the first message for this session and the
      # transmission of an HTTP response. The wait_after parameter works as
      # follows: after the receipt of the latest message for a particular
      # session, the server waits another wait_after milliseconds in case
      # there are more messages. If there are no additional messages, the
      # result is transmitted (a container with all the messages). If more
      # messages appear, the `wait_after` timer is reset.
      #
      # At the same time, the max_delay parameter has higher priority than
      # `wait_after`, and `max_wait` has higher priority than `max_delay`.
      #
      # This message does not require a response or an acknowledgement. If
      # the container transmitted over HTTP carries several such messages,
      # the behavior is undefined (in fact, the latest parameter will be
      # used).
      #
      # If no `http_wait` is present in container, default values
      # `max_delay=0` (milliseconds), `wait_after=0` (milliseconds), and
      # `max_wait=25000` (milliseconds) are used.
      #
      # If the client's ping of the server takes a long time, it may make
      # sense to set `max_delay` to a value that is comparable in magnitude
      # to ping time.
      #
      # [HTTP Wait/Long Poll]: https://core.telegram.org/mtproto/service_messages#http-wait-long-poll
      def handle_http_wait(message : Message)
        # TODO: implement
      end

      # Anything else that's not Service Message will be `Updates`.
      #
      # Since we handle all the possible service messages, we can
      # safely treat whatever message body we received as `Updates`.
      def handle_update(message : Message)
        # TODO: if this `Updates` cannot be deserialized, `getDifference` should be used
        @updates.push(message.body)
        nil
      end

      # Pushes a request into the internal buffer by manually serializing the messages for maximum
      # efficiency. If the buffer is full, returns `None`.
      #
      # [MTProto 2.0 guidelines]: https://core.telegram.org/mtproto/description.
      def push(request : Bytes) : MsgId?
        # TODO: rather than taking in bytes, take requests, serialize them in place, and if too large drop the last part of the buffer

        if @buffer.empty?
          # If the buffer is empty, reserve space for the container header
          @buffer.write(Bytes.new(HEADER_LEN + CONTAINER_HEADER_LEN))
        end

        # If we need to acknowledge messages, this notification goes in with the rest of requests
        # so that we can also include it. It has priority over user requests because these should
        # be sent out as soon as possible.
        unless @pending_ack.empty?
          # TODO: Avoid to_bytes here, serialize in place
          body = TL::Root::MsgsAck.new(@pending_ack).to_bytes
          self.serialize_msg(body, false)
        end

        # Check to see if the next salt can be used already. If it can, drop the current one and,
        # if the next salt is the last one, fetch more.
        if start_salt_time = @start_salt_time
          start_secs, start_instant = start_salt_time
          if salt = @salts[@salts.size - 2]?
            now = (start_instant.total_seconds + start_secs).to_i32
            if now >= salt.valid_since + SALT_USE_DELAY
              @salts.pop
              if @salts.size == 1
                Log.info { "only one future salt remaining; asking for more salts" }
                body = TL::Root::GetFutureSalts.new(num: NUM_FUTURE_SALTS).to_bytes
                self.serialize_msg(body, true)
              end
            end
          end
        end

        # Serialize MAXIMUM_LENGTH requests at most.
        if @msg_count >= MessageContainer::MAXIMUM_LENGTH
          Log.info { "buffer is full; dropping request" }
          return nil
        end

        # Requests that are too large will make Telegram drop the connection.
        raise "request is too large" if (request.size + Message::SIZE_OVERHEAD) > MessageContainer::MAXIMUM_SIZE

        # Serialized requests will always be correctly padded.
        raise "incorrect padding" unless request.size % 4 == 0

        # Payload provided by the user is always considered to be
        # content-related, which means we can apply compression.
        body = request
        if compression_threshold = @compression_threshold
          if request.size >= compression_threshold
            compressed = GzipPacked.from_unpacked(request).to_bytes
            if compressed.size < request.size
              body = compressed
            end
          end
        end

        new_size = @buffer.size + body.size + Message::SIZE_OVERHEAD
        if new_size > MessageContainer::MAXIMUM_SIZE
          Log.info { "message container is full; dropping request" }
          return nil
        end

        self.serialize_msg(body, true)
      end

      def finalize : Bytes
        buffer = self.finalize_plain
        if buffer.empty?
          buffer
        else
          Crypto.encrypt_data_v2(buffer, @auth_key)
        end
      end

      def deserialize(payload : Bytes) : Deserialization
        Utils.check_message_buffer(payload)

        plaintext = Crypto.decrypt_data_v2(payload, @auth_key)
        buffer = IO::Memory.new(plaintext[..])

        _salt = Int64.tl_deserialize(buffer)
        client_id = Int64.tl_deserialize(buffer)
        if client_id != @client_id
          raise "session id mismatch: #{client_id} != #{@client_id}"
        end

        self.process_message(Message.tl_deserialize(buffer))

        # For simplicity, and to avoid passing too much stuff around (RPC results, updates),
        # the processing result is stored in self. After processing is done, that temporary
        # state is cleaned and returned with `mem::take`.
        begin
          return Deserialization.new(
            rpc_results: @rpc_results,
            updates: @updates,
          )
        ensure
          @rpc_results.clear
          @updates.clear
        end
      end

      class Builder
        # Configures the time offset to Telegram servers.
        property time_offset : Int32

        property first_salt : Int64

        # Configures the compression threshold for outgoing messages.
        property compression_threshold : UInt32?

        # :nodoc:
        def initialize(time_offset : Int32, first_salt : Int64, compression_threshold : UInt32? = nil)
          @time_offset = time_offset
          @first_salt = first_salt
          @compression_threshold = compression_threshold
        end

        # Finishes the builder and returns the `MTProto` instance with all
        # the configuration changes applied.
        def finish(auth_key : Bytes) : MtpEncrypted
          MtpEncrypted.new(
            auth_key: Crypto::AuthKey.from_bytes(auth_key),
            time_offset: self.time_offset,
            salts: [TL::Root::FutureSalt.new(
              valid_since: 0,
              valid_until: Int32::MAX,
              salt: self.first_salt,
            )],
            start_salt_time: nil,
            client_id: begin
              buffer = IO::Memory.new(Random::Secure.random_bytes(8))
              IO::ByteFormat::LittleEndian.decode(Int64, buffer)
            end,
            sequence: 0,
            last_msg_id: 0,
            pending_ack: [] of Int64,
            compression_threshold: self.compression_threshold,
            rpc_results: [] of Tuple(MsgId, Bytes | RequestError),
            updates: [] of Bytes,
            buffer: IO::Memory.new,
            msg_count: 0,
          )
        end
      end
    end
  end
end
