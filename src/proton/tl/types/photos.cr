# Copyright 2021 - Chris Watson and contributors.
#
# Licensed under the MIT License. You should have received a copy of the license
# with this project. By using this project you agree to abide by all terms
# contained therein.
#
# This module contains generated, raw MTProto types for Telegram's user API.
# It is not advised to modify this code directly, other than to test
# changes. All changes should be made in the code generator.

require "../utils"
require "../core/*"

module Proton::TL
  module Types
    module Photos
      abstract class TypePhotos < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x8DCA6AA5
            Photos.tl_deserialize(io, bare)
          when 0x15051F54
            PhotosSlice.tl_deserialize(io, bare)
          when 0x91CD32A8
            GetUserPhotos.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypePhoto < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x20212CA8
            Photo.tl_deserialize(io, bare)
          when 0x72D4742C
            UpdateProfilePhoto.tl_deserialize(io, bare)
          when 0x89F30F69
            UploadProfilePhoto.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      class Photos < TypePhotos
        CONSTRUCTOR_ID = 0x8DCA6AA5

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @photos.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            photos = Array(Root::TypePhoto).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class PhotosSlice < TypePhotos
        CONSTRUCTOR_ID = 0x15051F54

        getter count : Int32
        getter photos : Array(Root::TypePhoto)
        getter users : Array(Root::TypeUser)

        def initialize(
          count : Int32,
          photos : Array(Root::TypePhoto),
          users : Array(Root::TypeUser)
        )
          @count = count
          @photos = photos
          @users = users
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @count.tl_serialize(io, true)
          @photos.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            count = Int32.tl_deserialize(io, true),
            photos = Array(Root::TypePhoto).tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class Photo < TypePhoto
        CONSTRUCTOR_ID = 0x20212CA8

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @photo.tl_serialize(io, false)
          @users.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            photo = Root::TypePhoto.tl_deserialize(io, false),
            users = Array(Root::TypeUser).tl_deserialize(io, false),
          )
        end
      end

      class UpdateProfilePhoto < TLRequest
        CONSTRUCTOR_ID = 0x72D4742C

        getter id : Root::TypeInputPhoto

        def initialize(
          id : Root::TypeInputPhoto
        )
          @id = id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @id.tl_serialize(io, false)
        end

        def return_type
          Photos::TypePhoto
        end
      end

      class UploadProfilePhoto < TLRequest
        CONSTRUCTOR_ID = 0x89F30F69

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!file.nil? ? 1 : 0) |
              (!video.nil? ? 2 : 0) |
              (!video_start_ts.nil? ? 4 : 0)
          ).tl_serialize(io)
          @file.tl_serialize(io, false) unless @file.nil?
          @video.tl_serialize(io, false) unless @video.nil?
          @video_start_ts.tl_serialize(io, true) unless @video_start_ts.nil?
        end

        def return_type
          Photos::TypePhoto
        end
      end

      class DeletePhotos < TLRequest
        CONSTRUCTOR_ID = 0x87CF7F2F

        getter id : Array(Root::TypeInputPhoto)

        def initialize(
          id : Array(Root::TypeInputPhoto)
        )
          @id = id
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @id.tl_serialize(io, false)
        end

        def return_type
          Array(Int64)
        end
      end

      class GetUserPhotos < TLRequest
        CONSTRUCTOR_ID = 0x91CD32A8

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
          @offset = offset
          @max_id = max_id
          @limit = limit
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @user_id.tl_serialize(io, false)
          @offset.tl_serialize(io, true)
          @max_id.tl_serialize(io, true)
          @limit.tl_serialize(io, true)
        end

        def return_type
          Photos::TypePhotos
        end
      end
    end
  end
end
