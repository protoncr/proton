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
  module Photos
    abstract class TypePhotos < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x8DCA6AA5
          Photos.tl_deserialize(io, bare)
        when 0x15051F54
          PhotosSlice.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    abstract class TypePhoto < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x20212CA8
          Photo.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: 0x%08X" % constructor_id
        end
      end
    end

    class Photos < TypePhotos
      getter constructor_id : UInt32 = 0x8DCA6AA5_u32
      class_getter constructor_id : UInt32 = 0x8DCA6AA5_u32

      getter photos : Array(Root::TypePhoto)
      getter users : Array(Root::TypeUser)

      def initialize(
        photos : Array(Root::TypePhoto),
        users : Array(Root::TypeUser)
      )
        @photos = photos
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @photos.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          photos: Array(Root::TypePhoto).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class PhotosSlice < TypePhotos
      getter constructor_id : UInt32 = 0x15051F54_u32
      class_getter constructor_id : UInt32 = 0x15051F54_u32

      getter count : Int32
      getter photos : Array(Root::TypePhoto)
      getter users : Array(Root::TypeUser)

      def initialize(
        count : Int32,
        photos : Array(Root::TypePhoto),
        users : Array(Root::TypeUser)
      )
        @count = TL::Utils.parse_int!(count, Int32)
        @photos = photos
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @count.tl_serialize(io)
        @photos.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          count: Int32.tl_deserialize(io),
          photos: Array(Root::TypePhoto).tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class Photo < TypePhoto
      getter constructor_id : UInt32 = 0x20212CA8_u32
      class_getter constructor_id : UInt32 = 0x20212CA8_u32

      getter photo : Root::TypePhoto
      getter users : Array(Root::TypeUser)

      def initialize(
        photo : Root::TypePhoto,
        users : Array(Root::TypeUser)
      )
        @photo = photo
        @users = users
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @photo.tl_serialize(io)
        @users.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          photo: Root::TypePhoto.tl_deserialize(io),
          users: Array(Root::TypeUser).tl_deserialize(io),
        )
      end
    end

    class UpdateProfilePhoto < TLRequest
      getter constructor_id : UInt32 = 0x72D4742C_u32
      class_getter constructor_id : UInt32 = 0x72D4742C_u32

      getter id : Root::TypeInputPhoto

      def initialize(
        id : Root::TypeInputPhoto
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Photos::TypePhoto
      end
    end

    class UploadProfilePhoto < TLRequest
      getter constructor_id : UInt32 = 0x89F30F69_u32
      class_getter constructor_id : UInt32 = 0x89F30F69_u32

      getter file : Root::TypeInputFile | Nil
      getter video : Root::TypeInputFile | Nil
      getter video_start_ts : Float64 | Nil

      def initialize(
        file : Root::TypeInputFile | Nil = nil,
        video : Root::TypeInputFile | Nil = nil,
        video_start_ts : Float64 | Nil = nil
      )
        @file = file
        @video = video
        @video_start_ts = video_start_ts
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!file.nil? ? 0x01 : 0) |
            (!video.nil? ? 0x02 : 0) |
            (!video_start_ts.nil? ? 0x04 : 0)
        ).tl_serialize(io)
        @file.tl_serialize(io) unless @file.nil?
        @video.tl_serialize(io) unless @video.nil?
        @video_start_ts.tl_serialize(io) unless @video_start_ts.nil?
      end

      def self.return_type : Deserializable
        Photos::TypePhoto
      end
    end

    class DeletePhotos < TLRequest
      getter constructor_id : UInt32 = 0x87CF7F2F_u32
      class_getter constructor_id : UInt32 = 0x87CF7F2F_u32

      getter id : Array(Root::TypeInputPhoto)

      def initialize(
        id : Array(Root::TypeInputPhoto)
      )
        @id = id
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @id.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Array(Int64)
      end
    end

    class GetUserPhotos < TLRequest
      getter constructor_id : UInt32 = 0x91CD32A8_u32
      class_getter constructor_id : UInt32 = 0x91CD32A8_u32

      getter user_id : Root::TypeInputUser
      getter offset : Int32
      getter max_id : Int64
      getter limit : Int32

      def initialize(
        user_id : Root::TypeInputUser,
        offset : Int32,
        max_id : Int64,
        limit : Int32
      )
        @user_id = user_id
        @offset = TL::Utils.parse_int!(offset, Int32)
        @max_id = max_id
        @limit = TL::Utils.parse_int!(limit, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @user_id.tl_serialize(io)
        @offset.tl_serialize(io)
        @max_id.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.return_type : Deserializable
        Photos::TypePhotos
      end
    end
  end
end
