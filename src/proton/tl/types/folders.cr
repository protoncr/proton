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
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x6847D0AB
          EditPeerFolders.tl_deserialize(io, bare)
        when 0x1C295881
          DeleteFolder.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class EditPeerFolders < TLRequest
      CONSTRUCTOR_ID = 0x6847D0AB

      getter folder_peers : Array(Root::TypeInputFolderPeer)

      def initialize(
        folder_peers : Array(Root::TypeInputFolderPeer)
      )
        @folder_peers = folder_peers
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @folder_peers.tl_serialize(io, false)
      end

      def return_type
        Root::TypeUpdates
      end
    end

    class DeleteFolder < TLRequest
      CONSTRUCTOR_ID = 0x1C295881

      getter folder_id : Int32

      def initialize(
        folder_id : Int32
      )
        @folder_id = folder_id
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @folder_id.tl_serialize(io, true)
      end

      def return_type
        Root::TypeUpdates
      end
    end
  end
end
