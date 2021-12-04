module Proton
  module MTProto
    # Results from the deserialization of a response.
    record Deserialization,
      # Result bodies to Remote Procedure Calls.
      rpc_results : Array(Tuple(MsgId, Bytes | RequestError)),
      # Updates that came in the response.
      updates : Array(Bytes)

    # The trait used by the [Mobile Transport Protocol] to serialize outgoing
    # messages and deserialize incoming ones into proper responses.
    #
    # [Mobile Transport Protocol]: https://core.telegram.org/mtproto/description
    abstract class MtpBase
      Log = ::Log.for({{ @type.id }})

      # Serializes one request to the internal buffer, which can be later retrieved by calling
      # `finalize` after one or more `push` have been made.
      #
      # Returns the message ID assigned the request if it was serialized, or `None` if the buffer
      # is full and cannot hold more requests.
      #
      # # Panics
      #
      # The method raises if the body length is not padded to 4 bytes. The
      # serialization of requests will always be correctly padded, so adding
      # an error case for this rare case (impossible with the expected inputs)
      # would simply be unnecessary.
      #
      # The method also raises if the body length is too large for similar
      # reasons. It is not reasonable to construct huge requests (although
      # possible) because they would likely fail with a RPC error anyway,
      # so we avoid another error case by simply panicking.
      #
      # The definition of "too large" is roughly 1MB, so as long as the
      # payload is below that mark, it's safe to call.
      abstract def push(request : Bytes) : MsgId?

      # Finalizes the internal buffer of requests.
      #
      # Note that even if there are no requests to serialize, the protocol may
      # produce data that has to be sent after deserializing incoming messages.
      abstract def finalize : Bytes

      # Deserializes a single incoming message payload into zero or more responses.
      abstract def deserialize(payload : Bytes) : Deserialization
    end
  end
end
