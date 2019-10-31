# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The call is ready to use.
  # protocol [Proton::Types::CallProtocol] Call protocols supported by the peer.
  # connections [::Array(Proton::Types::CallConnection)] Available UDP reflectors.
  # config [::String] A JSON-encoded call config.
  # encryption_key [::String] Call encryption key.
  # emojis [::Array(::String)] Encryption key emojis fingerprint.
  # allow_p2p [::Bool] True, if peer-to-peer connection is allowed by users privacy settings.
  class CallState::Ready < Types::CallState
    property protocol : Proton::Types::CallProtocol
    property connections : ::Array(Proton::Types::CallConnection)
    property config : ::String
    property encryption_key : ::String
    property emojis : ::Array(::String)
    property allow_p2p : ::Bool

    def initialize(@protocol : Proton::Types::CallProtocol, @connections : ::Array(Proton::Types::CallConnection), @config : ::String, @encryption_key : ::String, @emojis : ::Array(::String), @allow_p2p : ::Bool)
    end
  end
end

