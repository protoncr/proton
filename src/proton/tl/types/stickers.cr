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
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x85FEA03F
          SuggestedShortName.tl_deserialize(io, bare)
        when 0x4DAFC503
          SuggestShortName.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeStickerSet < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = Int32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x9021AB67
          CreateStickerSet.tl_deserialize(io, bare)
        when 0xF7760F51
          RemoveStickerFromSet.tl_deserialize(io, bare)
        when 0xFFB6D4CA
          ChangeStickerPosition.tl_deserialize(io, bare)
        when 0x8653FEBE
          AddStickerToSet.tl_deserialize(io, bare)
        when 0x9A364E30
          SetStickerSetThumb.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class SuggestedShortName < TypeSuggestedShortName
      CONSTRUCTOR_ID = 0x85FEA03F

      getter short_name : Bytes

      def initialize(
        short_name : Bytes | String | IO
      )
        @short_name = short_name
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @short_name.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          short_name: Bytes.tl_deserialize(io, true),
        )
      end
    end

    class CreateStickerSet < TLRequest
      CONSTRUCTOR_ID = 0x9021AB67

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
        @title = title
        @short_name = short_name
        @stickers = stickers
        @masks = masks
        @animated = animated
        @thumb = thumb
        @software = software
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        (
          (!masks.nil? ? 1 : 0) |
            (!animated.nil? ? 2 : 0) |
            (!thumb.nil? ? 4 : 0) |
            (!software.nil? ? 8 : 0)
        ).tl_serialize(io)
        @user_id.tl_serialize(io, false)
        @title.tl_serialize(io, true)
        @short_name.tl_serialize(io, true)
        @thumb.tl_serialize(io, false) unless @thumb.nil?
        @stickers.tl_serialize(io, false)
        @software.tl_serialize(io, true) unless @software.nil?
      end

      def return_type
        Messages::TypeStickerSet
      end
    end

    class RemoveStickerFromSet < TLRequest
      CONSTRUCTOR_ID = 0xF7760F51

      getter sticker : Root::TypeInputDocument

      def initialize(
        sticker : Root::TypeInputDocument
      )
        @sticker = sticker
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @sticker.tl_serialize(io, false)
      end

      def return_type
        Messages::TypeStickerSet
      end
    end

    class ChangeStickerPosition < TLRequest
      CONSTRUCTOR_ID = 0xFFB6D4CA

      getter sticker : Root::TypeInputDocument
      getter position : Int32

      def initialize(
        sticker : Root::TypeInputDocument,
        position : Int32
      )
        @sticker = sticker
        @position = position
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @sticker.tl_serialize(io, false)
        @position.tl_serialize(io, true)
      end

      def return_type
        Messages::TypeStickerSet
      end
    end

    class AddStickerToSet < TLRequest
      CONSTRUCTOR_ID = 0x8653FEBE

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @stickerset.tl_serialize(io, false)
        @sticker.tl_serialize(io, false)
      end

      def return_type
        Messages::TypeStickerSet
      end
    end

    class SetStickerSetThumb < TLRequest
      CONSTRUCTOR_ID = 0x9A364E30

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
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @stickerset.tl_serialize(io, false)
        @thumb.tl_serialize(io, false)
      end

      def return_type
        Messages::TypeStickerSet
      end
    end

    class CheckShortName < TLRequest
      CONSTRUCTOR_ID = 0x284B3639

      getter short_name : Bytes

      def initialize(
        short_name : Bytes | String | IO
      )
        @short_name = short_name
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @short_name.tl_serialize(io, true)
      end

      def return_type
        Bool
      end
    end

    class SuggestShortName < TLRequest
      CONSTRUCTOR_ID = 0x4DAFC503

      getter title : Bytes

      def initialize(
        title : Bytes | String | IO
      )
        @title = title
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io) unless bare
        @title.tl_serialize(io, true)
      end

      def return_type
        Stickers::TypeSuggestedShortName
      end
    end
  end
end
