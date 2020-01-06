# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The call is ready to use.
  class CallState::Ready < Types::CallState
    include JSON::Serializable

    # Call protocols supported by the peer
    property protocol : Proton::Types::CallProtocol

    # Available UDP reflectors
    property connections : ::Array(Proton::Types::CallConnection)

    # A JSON-encoded call config
    property config : ::String

    # Call encryption key
    property encryption_key : ::String

    # Encryption key emojis fingerprint
    property emojis : ::Array(::String)

    # True, if peer-to-peer connection is allowed by users privacy settings
    property allow_p2p : ::Bool = false

    def initialize(@protocol : Proton::Types::CallProtocol, @connections : ::Array(Proton::Types::CallConnection), @config : ::String, @encryption_key : ::String, @emojis : ::Array(::String), @allow_p2p : ::Bool = false)
    end
  end
end
