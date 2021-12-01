require "./errors"
require "./utils"
require "./manual_tl"
require "./authentication"

require "./transport/base"
require "./transport/intermediate"
require "./transport/abridged"
require "./transport/full"

module Proton
  # This library is an implementation of the [Mobile Transport Protocol].
  #
  # It is capable of efficiently packing enqueued requests into message
  # containers to later be encrypted and transmitted, and processing the
  # server responses to maintain a correct state.
  #
  # [Mobile Transport Protocol]: https://core.telegram.org/mtproto
  module MTProto
    # The default compression threshold to be used.
    DEFAULT_COMPRESSION_THRESHOLD = 512

    # A Message Identifier.
    #
    # When requests are enqueued, a new associated message identifier is
    # returned. As server responses get processed, some of them will be a
    # response to a previous request. You can now  `pop_response` to get
    # all the server responses, and if one matches your original identifier,
    # you will know the response corresponds to it.
    alias MsgId = Int64
  end
end
