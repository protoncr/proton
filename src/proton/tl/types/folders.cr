# Copyright 2021 - Chris Watson and contributors.
#
# Licensed under the MIT License. You should have received a copy of the license
# with this project. By using this project you agree to abide by all terms
# contained therein.
#
# This module contains generated, raw MTProto types for Telegram's user API.
# It is not advised to modify this code directly, other than to test
# changes. All changes should be made in the code generator.

module Proton::TL
  module Folders
    abstract class TypeUpdates < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    class EditPeerFolders < TLRequest
      getter constructor_id : UInt32 = 0x6847D0AB_u32
      class_getter constructor_id : UInt32 = 0x6847D0AB_u32

      getter folder_peers : Array(Root::TypeInputFolderPeer)

      def initialize(
        folder_peers : Array(Root::TypeInputFolderPeer)
      )
        @folder_peers = folder_peers
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @folder_peers.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end

    class DeleteFolder < TLRequest
      getter constructor_id : UInt32 = 0x1C295881_u32
      class_getter constructor_id : UInt32 = 0x1C295881_u32

      getter folder_id : Int32

      def initialize(
        folder_id : Int32
      )
        @folder_id = TL::Utils.parse_int!(folder_id, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @folder_id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Root::TypeUpdates
      end
    end
  end
end
