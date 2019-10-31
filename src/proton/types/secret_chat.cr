# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a secret chat.
  # id [::Int32] Secret chat identifier.
  # user_id [::Int32] Identifier of the chat partner.
  # state [Proton::Types::SecretChatState] State of the secret chat.
  # is_outbound [::Bool] True, if the chat was created by the current user; otherwise false.
  # ttl [::Int32] Current message Time To Live setting (self-destruct timer) for the chat, in seconds.
  # key_hash [::String] Hash of the currently used key for comparison with the hash of the chat partner's key.
  #   This is a string of 36 bytes, which must be used to make a 12x12 square image with a color depth of 4.
  #   The first 16 bytes should be used to make a central 8x8 square, while the remaining 20 bytes should be used to
  #   construct a 2-pixel-wide border around that square.
  #   Alternatively, the first 32 bytes of the hash can be converted to the hexadecimal format and printed as 32
  #   2-digit hex numbers.
  # layer [::Int32] Secret chat layer; determines features supported by the other client.
  #   Video notes are supported if the layer >= 66.
  class SecretChat < Types::Base
    property id : ::Int32
    property user_id : ::Int32
    property state : Proton::Types::SecretChatState
    property is_outbound : ::Bool
    property ttl : ::Int32
    property key_hash : ::String
    property layer : ::Int32

    def initialize(@id : ::Int32, @user_id : ::Int32, @state : Proton::Types::SecretChatState, @is_outbound : ::Bool, @ttl : ::Int32, @key_hash : ::String, @layer : ::Int32)
    end
  end
end

