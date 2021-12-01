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
require "./storage"

module Proton::TL
  module Upload
    abstract class TypeFile < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x096A18D5
          File.tl_deserialize(io, bare)
        when 0xF18CDA44
          FileCdnRedirect.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeWebFile < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0x21E753BC
          WebFile.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    abstract class TypeCdnFile < TLObject
      def self.tl_deserialize(io : IO, bare = false)
        constructor_id = UInt32.tl_deserialize(io)
        io.seek(-4, :current)

        case constructor_id
        when 0xEEA8E46E
          CdnFileReuploadNeeded.tl_deserialize(io, bare)
        when 0xA99FCA4F
          CdnFile.tl_deserialize(io, bare)
        else
          raise "Unknown constructor id: #{constructor_id}"
        end
      end
    end

    class File < TypeFile
      getter constructor_id : UInt32 = 0x096A18D5_u32
      class_getter constructor_id : UInt32 = 0x096A18D5_u32

      getter type : Storage::TypeFileType
      getter mtime : Int32
      getter bytes : Bytes

      def initialize(
        type : Storage::TypeFileType,
        mtime : Int32,
        bytes : Bytes | String | IO
      )
        @type = type
        @mtime = TL::Utils.parse_int!(mtime, Int32)
        @bytes = TL::Utils.parse_bytes!(bytes)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @type.tl_serialize(io)
        @mtime.tl_serialize(io)
        @bytes.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          type: Storage::TypeFileType.tl_deserialize(io),
          mtime: Int32.tl_deserialize(io),
          bytes: Bytes.tl_deserialize(io),
        )
      end
    end

    class FileCdnRedirect < TypeFile
      getter constructor_id : UInt32 = 0xF18CDA44_u32
      class_getter constructor_id : UInt32 = 0xF18CDA44_u32

      getter dc_id : Int32
      getter file_token : Bytes
      getter encryption_key : Bytes
      getter encryption_iv : Bytes
      getter file_hashes : Array(Root::TypeFileHash)

      def initialize(
        dc_id : Int32,
        file_token : Bytes | String | IO,
        encryption_key : Bytes | String | IO,
        encryption_iv : Bytes | String | IO,
        file_hashes : Array(Root::TypeFileHash)
      )
        @dc_id = TL::Utils.parse_int!(dc_id, Int32)
        @file_token = TL::Utils.parse_bytes!(file_token)
        @encryption_key = TL::Utils.parse_bytes!(encryption_key)
        @encryption_iv = TL::Utils.parse_bytes!(encryption_iv)
        @file_hashes = file_hashes
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @dc_id.tl_serialize(io)
        @file_token.tl_serialize(io)
        @encryption_key.tl_serialize(io)
        @encryption_iv.tl_serialize(io)
        @file_hashes.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          dc_id: Int32.tl_deserialize(io),
          file_token: Bytes.tl_deserialize(io),
          encryption_key: Bytes.tl_deserialize(io),
          encryption_iv: Bytes.tl_deserialize(io),
          file_hashes: Array(Root::TypeFileHash).tl_deserialize(io),
        )
      end
    end

    class WebFile < TypeWebFile
      getter constructor_id : UInt32 = 0x21E753BC_u32
      class_getter constructor_id : UInt32 = 0x21E753BC_u32

      getter size : Int32
      getter mime_type : Bytes
      getter file_type : Storage::TypeFileType
      getter mtime : Int32
      getter bytes : Bytes

      def initialize(
        size : Int32,
        mime_type : Bytes | String | IO,
        file_type : Storage::TypeFileType,
        mtime : Int32,
        bytes : Bytes | String | IO
      )
        @size = TL::Utils.parse_int!(size, Int32)
        @mime_type = TL::Utils.parse_bytes!(mime_type)
        @file_type = file_type
        @mtime = TL::Utils.parse_int!(mtime, Int32)
        @bytes = TL::Utils.parse_bytes!(bytes)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @size.tl_serialize(io)
        @mime_type.tl_serialize(io)
        @file_type.tl_serialize(io)
        @mtime.tl_serialize(io)
        @bytes.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          size: Int32.tl_deserialize(io),
          mime_type: Bytes.tl_deserialize(io),
          file_type: Storage::TypeFileType.tl_deserialize(io),
          mtime: Int32.tl_deserialize(io),
          bytes: Bytes.tl_deserialize(io),
        )
      end
    end

    class CdnFileReuploadNeeded < TypeCdnFile
      getter constructor_id : UInt32 = 0xEEA8E46E_u32
      class_getter constructor_id : UInt32 = 0xEEA8E46E_u32

      getter request_token : Bytes

      def initialize(
        request_token : Bytes | String | IO
      )
        @request_token = TL::Utils.parse_bytes!(request_token)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @request_token.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          request_token: Bytes.tl_deserialize(io),
        )
      end
    end

    class CdnFile < TypeCdnFile
      getter constructor_id : UInt32 = 0xA99FCA4F_u32
      class_getter constructor_id : UInt32 = 0xA99FCA4F_u32

      getter bytes : Bytes

      def initialize(
        bytes : Bytes | String | IO
      )
        @bytes = TL::Utils.parse_bytes!(bytes)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @bytes.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        Utils.assert_constructor(io, self.constructor_id) unless bare
        new(
          bytes: Bytes.tl_deserialize(io),
        )
      end
    end

    class SaveFilePart < TLRequest
      getter constructor_id : UInt32 = 0xB304A621_u32
      class_getter constructor_id : UInt32 = 0xB304A621_u32

      getter file_id : Int64
      getter file_part : Int32
      getter bytes : Bytes

      def initialize(
        file_id : Int64,
        file_part : Int32,
        bytes : Bytes | String | IO
      )
        @file_id = file_id
        @file_part = TL::Utils.parse_int!(file_part, Int32)
        @bytes = TL::Utils.parse_bytes!(bytes)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @file_id.tl_serialize(io)
        @file_part.tl_serialize(io)
        @bytes.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end

    class GetFile < TLRequest
      getter constructor_id : UInt32 = 0xB15A9AFC_u32
      class_getter constructor_id : UInt32 = 0xB15A9AFC_u32

      getter location : Root::TypeInputFileLocation
      getter offset : Int32
      getter limit : Int32
      getter precise : Bool | Nil
      getter cdn_supported : Bool | Nil

      def initialize(
        location : Root::TypeInputFileLocation,
        offset : Int32,
        limit : Int32,
        precise : Bool | Nil = nil,
        cdn_supported : Bool | Nil = nil
      )
        @location = location
        @offset = TL::Utils.parse_int!(offset, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
        @precise = precise
        @cdn_supported = cdn_supported
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        (
          (!precise.nil? ? 0x01 : 0) |
            (!cdn_supported.nil? ? 0x02 : 0)
        ).tl_serialize(io)
        @location.tl_serialize(io)
        @offset.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.return_type
        Upload::TypeFile
      end
    end

    class SaveBigFilePart < TLRequest
      getter constructor_id : UInt32 = 0xDE7B673D_u32
      class_getter constructor_id : UInt32 = 0xDE7B673D_u32

      getter file_id : Int64
      getter file_part : Int32
      getter file_total_parts : Int32
      getter bytes : Bytes

      def initialize(
        file_id : Int64,
        file_part : Int32,
        file_total_parts : Int32,
        bytes : Bytes | String | IO
      )
        @file_id = file_id
        @file_part = TL::Utils.parse_int!(file_part, Int32)
        @file_total_parts = TL::Utils.parse_int!(file_total_parts, Int32)
        @bytes = TL::Utils.parse_bytes!(bytes)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @file_id.tl_serialize(io)
        @file_part.tl_serialize(io)
        @file_total_parts.tl_serialize(io)
        @bytes.tl_serialize(io)
      end

      def self.return_type
        Bool
      end
    end

    class GetWebFile < TLRequest
      getter constructor_id : UInt32 = 0x24E6818D_u32
      class_getter constructor_id : UInt32 = 0x24E6818D_u32

      getter location : Root::TypeInputWebFileLocation
      getter offset : Int32
      getter limit : Int32

      def initialize(
        location : Root::TypeInputWebFileLocation,
        offset : Int32,
        limit : Int32
      )
        @location = location
        @offset = TL::Utils.parse_int!(offset, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @location.tl_serialize(io)
        @offset.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.return_type
        Upload::TypeWebFile
      end
    end

    class GetCdnFile < TLRequest
      getter constructor_id : UInt32 = 0x2000BCC3_u32
      class_getter constructor_id : UInt32 = 0x2000BCC3_u32

      getter file_token : Bytes
      getter offset : Int32
      getter limit : Int32

      def initialize(
        file_token : Bytes | String | IO,
        offset : Int32,
        limit : Int32
      )
        @file_token = TL::Utils.parse_bytes!(file_token)
        @offset = TL::Utils.parse_int!(offset, Int32)
        @limit = TL::Utils.parse_int!(limit, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @file_token.tl_serialize(io)
        @offset.tl_serialize(io)
        @limit.tl_serialize(io)
      end

      def self.return_type
        Upload::TypeCdnFile
      end
    end

    class ReuploadCdnFile < TLRequest
      getter constructor_id : UInt32 = 0x9B2754A8_u32
      class_getter constructor_id : UInt32 = 0x9B2754A8_u32

      getter file_token : Bytes
      getter request_token : Bytes

      def initialize(
        file_token : Bytes | String | IO,
        request_token : Bytes | String | IO
      )
        @file_token = TL::Utils.parse_bytes!(file_token)
        @request_token = TL::Utils.parse_bytes!(request_token)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @file_token.tl_serialize(io)
        @request_token.tl_serialize(io)
      end

      def self.return_type
        Array(Root::TypeFileHash)
      end
    end

    class GetCdnFileHashes < TLRequest
      getter constructor_id : UInt32 = 0x4DA54231_u32
      class_getter constructor_id : UInt32 = 0x4DA54231_u32

      getter file_token : Bytes
      getter offset : Int32

      def initialize(
        file_token : Bytes | String | IO,
        offset : Int32
      )
        @file_token = TL::Utils.parse_bytes!(file_token)
        @offset = TL::Utils.parse_int!(offset, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @file_token.tl_serialize(io)
        @offset.tl_serialize(io)
      end

      def self.return_type
        Array(Root::TypeFileHash)
      end
    end

    class GetFileHashes < TLRequest
      getter constructor_id : UInt32 = 0xC7025931_u32
      class_getter constructor_id : UInt32 = 0xC7025931_u32

      getter location : Root::TypeInputFileLocation
      getter offset : Int32

      def initialize(
        location : Root::TypeInputFileLocation,
        offset : Int32
      )
        @location = location
        @offset = TL::Utils.parse_int!(offset, Int32)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io) unless bare
        @location.tl_serialize(io)
        @offset.tl_serialize(io)
      end

      def self.return_type
        Array(Root::TypeFileHash)
      end
    end
  end
end
