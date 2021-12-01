# Copyright 2021 - Chris Watson and contributors.
#
# Licensed under the MIT License. You should have received a copy of the license
# with this project. By using this project you agree to abide by all terms
# contained therein.
#
# This module contains generated, raw MTProto types for Telegram's user API.
# It is not advised to modify this code directly, other than to test
# changes. All changes should be made in the code generator.

# Required modules for this namespace
require "./messages"

module Proton::TL
  module Stickers
    abstract class TypeSuggestedShortName < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x85FEA03F
          SuggestedShortName.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeStickerSet < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class SuggestedShortName < TypeSuggestedShortName
      getter constructor_id : UInt32 = 0x85FEA03F_u32
      class_getter constructor_id : UInt32 = 0x85FEA03F_u32

      getter short_name : Bytes

      def initialize(
        short_name : Bytes | String | IO
      )
        @short_name = TL::Utils.parse_bytes!(short_name)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @short_name.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          short_name: Bytes.tl_deserialize(io),
        )
      end
    end

    class CreateStickerSet < TLRequest
      getter constructor_id : UInt32 = 0x9021AB67_u32
      class_getter constructor_id : UInt32 = 0x9021AB67_u32

      getter user_id : Root::TypeInputUser
      getter title : Bytes
      getter short_name : Bytes
      getter stickers : Array(Root::TypeInputStickerSetItem)
      getter masks : Bool | Nil
      getter animated : Bool | Nil
      getter thumb : Root::TypeInputDocument | Nil
      getter software : Bytes | Nil

      def initialize(
        user_id : Root::TypeInputUser,
        title : Bytes | String | IO,
        short_name : Bytes | String | IO,
        stickers : Array(Root::TypeInputStickerSetItem),
        masks : Bool | Nil = nil,
        animated : Bool | Nil = nil,
        thumb : Root::TypeInputDocument | Nil = nil,
        software : Bytes | Nil = nil
      )
        @user_id = user_id
        @title = TL::Utils.parse_bytes!(title)
        @short_name = TL::Utils.parse_bytes!(short_name)
        @stickers = stickers
        @masks = masks
        @animated = animated
        @thumb = thumb
        @software = TL::Utils.parse_bytes(software)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!masks.nil? ? 0x01 : 0) |
            (!animated.nil? ? 0x02 : 0) |
            (!thumb.nil? ? 0x04 : 0) |
            (!software.nil? ? 0x08 : 0)
        ).tl_serialize(io)
        @user_id.tl_serialize(io)
        @title.tl_serialize(io)
        @short_name.tl_serialize(io)
        @thumb.tl_serialize(io) unless @thumb.nil?
        @stickers.tl_serialize(io)
        @software.tl_serialize(io) unless @software.nil?
      end

      def self.return_type
        Messages::TypeStickerSet
      end
    end

    class RemoveStickerFromSet < TLRequest
      getter constructor_id : UInt32 = 0xF7760F51_u32
      class_getter constructor_id : UInt32 = 0xF7760F51_u32

      getter sticker : Root::TypeInputDocument

      def initialize(
        sticker : Root::TypeInputDocument
      )
        @sticker = sticker
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @sticker.tl_serialize(io)
      end

      def self.return_type
        Messages::TypeStickerSet
      end
    end

    class ChangeStickerPosition < TLRequest
      getter constructor_id : UInt32 = 0xFFB6D4CA_u32
      class_getter constructor_id : UInt32 = 0xFFB6D4CA_u32

      getter sticker : Root::TypeInputDocument
      getter position : Int32

      def initialize(
        sticker : Root::TypeInputDocument,
        position : Int32
      )
        @sticker = sticker
        @position = TL::Utils.parse_int!(position, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @sticker.tl_serialize(io)
        @position.tl_serialize(io)
      end

      def self.return_type
        Messages::TypeStickerSet
      end
    end

    class AddStickerToSet < TLRequest
      getter constructor_id : UInt32 = 0x8653FEBE_u32
      class_getter constructor_id : UInt32 = 0x8653FEBE_u32

      getter stickerset : Root::TypeInputStickerSet
      getter sticker : Root::TypeInputStickerSetItem

      def initialize(
        stickerset : Root::TypeInputStickerSet,
        sticker : Root::TypeInputStickerSetItem
      )
        @stickerset = stickerset
        @sticker = sticker
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @stickerset.tl_serialize(io)
        @sticker.tl_serialize(io)
      end

      def self.return_type
        Messages::TypeStickerSet
      end
    end

    class SetStickerSetThumb < TLRequest
      getter constructor_id : UInt32 = 0x9A364E30_u32
      class_getter constructor_id : UInt32 = 0x9A364E30_u32

      getter stickerset : Root::TypeInputStickerSet
      getter thumb : Root::TypeInputDocument

      def initialize(
        stickerset : Root::TypeInputStickerSet,
        thumb : Root::TypeInputDocument
      )
        @stickerset = stickerset
        @thumb = thumb
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @stickerset.tl_serialize(io)
        @thumb.tl_serialize(io)
      end

      def self.return_type
        Messages::TypeStickerSet
      end
    end

    class CheckShortName < TLRequest
      getter constructor_id : UInt32 = 0x284B3639_u32
      class_getter constructor_id : UInt32 = 0x284B3639_u32

      getter short_name : Bytes

      def initialize(
        short_name : Bytes | String | IO
      )
        @short_name = TL::Utils.parse_bytes!(short_name)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @short_name.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end

    class SuggestShortName < TLRequest
      getter constructor_id : UInt32 = 0x4DAFC503_u32
      class_getter constructor_id : UInt32 = 0x4DAFC503_u32

      getter title : Bytes

      def initialize(
        title : Bytes | String | IO
      )
        @title = TL::Utils.parse_bytes!(title)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @title.tl_serialize(io)
      end

      def self.return_type
        Stickers::TypeSuggestedShortName
      end
    end
  end
end
