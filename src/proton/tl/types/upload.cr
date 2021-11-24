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

# Required modules for this namespace
require "./storage"

module Proton::TL
  module Types
    module Upload
      abstract class TypeFile < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x096A18D5
            File.tl_deserialize(io, bare)
          when 0xF18CDA44
            FileCdnRedirect.tl_deserialize(io, bare)
          when 0xB15A9AFC
            GetFile.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeWebFile < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0x21E753BC
            WebFile.tl_deserialize(io, bare)
          when 0x24E6818D
            GetWebFile.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      abstract class TypeCdnFile < TLObject
        def self.tl_deserialize(io : IO, bare = false)
          constructor_id = Int32.tl_deserialize(io)
          io.seek(-4, :current)

          case constructor_id
          when 0xEEA8E46E
            CdnFileReuploadNeeded.tl_deserialize(io, bare)
          when 0xA99FCA4F
            CdnFile.tl_deserialize(io, bare)
          when 0x2000BCC3
            GetCdnFile.tl_deserialize(io, bare)
          else
            raise "Unknown constructor id: #{constructor_id}"
          end
        end
      end

      class File < TypeFile
        CONSTRUCTOR_ID = 0x096A18D5

        getter type : Storage::TypeFileType
        getter mtime : Int32
        getter bytes : Bytes

        def initialize(
          type : Storage::TypeFileType,
          mtime : Int32,
          bytes : Bytes | String | IO
        )
          @type = type
          @mtime = mtime
          @bytes = TL::Utils.parse_bytes!(bytes)
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @type.tl_serialize(io, false)
          @mtime.tl_serialize(io, true)
          @bytes.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            type = Storage::TypeFileType.tl_deserialize(io, false),
            mtime = Int32.tl_deserialize(io, true),
            bytes = Bytes.tl_deserialize(io, true),
          )
        end
      end

      class FileCdnRedirect < TypeFile
        CONSTRUCTOR_ID = 0xF18CDA44

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
          @dc_id = dc_id
          @file_token = TL::Utils.parse_bytes!(file_token)
          @encryption_key = TL::Utils.parse_bytes!(encryption_key)
          @encryption_iv = TL::Utils.parse_bytes!(encryption_iv)
          @file_hashes = file_hashes
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @dc_id.tl_serialize(io, true)
          @file_token.tl_serialize(io, true)
          @encryption_key.tl_serialize(io, true)
          @encryption_iv.tl_serialize(io, true)
          @file_hashes.tl_serialize(io, false)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            dc_id = Int32.tl_deserialize(io, true),
            file_token = Bytes.tl_deserialize(io, true),
            encryption_key = Bytes.tl_deserialize(io, true),
            encryption_iv = Bytes.tl_deserialize(io, true),
            file_hashes = Array(Root::TypeFileHash).tl_deserialize(io, false),
          )
        end
      end

      class WebFile < TypeWebFile
        CONSTRUCTOR_ID = 0x21E753BC

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
          @size = size
          @mime_type = mime_type
          @file_type = file_type
          @mtime = mtime
          @bytes = TL::Utils.parse_bytes!(bytes)
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @size.tl_serialize(io, true)
          @mime_type.tl_serialize(io, true)
          @file_type.tl_serialize(io, false)
          @mtime.tl_serialize(io, true)
          @bytes.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            size = Int32.tl_deserialize(io, true),
            mime_type = Bytes.tl_deserialize(io, true),
            file_type = Storage::TypeFileType.tl_deserialize(io, false),
            mtime = Int32.tl_deserialize(io, true),
            bytes = Bytes.tl_deserialize(io, true),
          )
        end
      end

      class CdnFileReuploadNeeded < TypeCdnFile
        CONSTRUCTOR_ID = 0xEEA8E46E

        getter request_token : Bytes

        def initialize(
          request_token : Bytes | String | IO
        )
          @request_token = TL::Utils.parse_bytes!(request_token)
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @request_token.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            request_token = Bytes.tl_deserialize(io, true),
          )
        end
      end

      class CdnFile < TypeCdnFile
        CONSTRUCTOR_ID = 0xA99FCA4F

        getter bytes : Bytes

        def initialize(
          bytes : Bytes | String | IO
        )
          @bytes = TL::Utils.parse_bytes!(bytes)
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @bytes.tl_serialize(io, true)
        end

        def self.tl_deserialize(io : IO, bare = false)
          new(
            bytes = Bytes.tl_deserialize(io, true),
          )
        end
      end

      class SaveFilePart < TLRequest
        CONSTRUCTOR_ID = 0xB304A621

        getter file_id : Int64
        getter file_part : Int32
        getter bytes : Bytes

        def initialize(
          file_id : Int64,
          file_part : Int32,
          bytes : Bytes | String | IO
        )
          @file_id = file_id
          @file_part = file_part
          @bytes = TL::Utils.parse_bytes!(bytes)
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @file_id.tl_serialize(io, true)
          @file_part.tl_serialize(io, true)
          @bytes.tl_serialize(io, true)
        end

        def return_type
          Bool
        end
      end

      class GetFile < TLRequest
        CONSTRUCTOR_ID = 0xB15A9AFC

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
          @offset = offset
          @limit = limit
          @precise = precise
          @cdn_supported = cdn_supported
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          (
            (!precise.nil? ? 1 : 0) |
              (!cdn_supported.nil? ? 2 : 0)
          ).tl_serialize(io)
          @location.tl_serialize(io, false)
          @offset.tl_serialize(io, true)
          @limit.tl_serialize(io, true)
        end

        def return_type
          Upload::TypeFile
        end
      end

      class SaveBigFilePart < TLRequest
        CONSTRUCTOR_ID = 0xDE7B673D

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
          @file_part = file_part
          @file_total_parts = file_total_parts
          @bytes = TL::Utils.parse_bytes!(bytes)
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @file_id.tl_serialize(io, true)
          @file_part.tl_serialize(io, true)
          @file_total_parts.tl_serialize(io, true)
          @bytes.tl_serialize(io, true)
        end

        def return_type
          Bool
        end
      end

      class GetWebFile < TLRequest
        CONSTRUCTOR_ID = 0x24E6818D

        getter location : Root::TypeInputWebFileLocation
        getter offset : Int32
        getter limit : Int32

        def initialize(
          location : Root::TypeInputWebFileLocation,
          offset : Int32,
          limit : Int32
        )
          @location = location
          @offset = offset
          @limit = limit
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @location.tl_serialize(io, false)
          @offset.tl_serialize(io, true)
          @limit.tl_serialize(io, true)
        end

        def return_type
          Upload::TypeWebFile
        end
      end

      class GetCdnFile < TLRequest
        CONSTRUCTOR_ID = 0x2000BCC3

        getter file_token : Bytes
        getter offset : Int32
        getter limit : Int32

        def initialize(
          file_token : Bytes | String | IO,
          offset : Int32,
          limit : Int32
        )
          @file_token = TL::Utils.parse_bytes!(file_token)
          @offset = offset
          @limit = limit
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @file_token.tl_serialize(io, true)
          @offset.tl_serialize(io, true)
          @limit.tl_serialize(io, true)
        end

        def return_type
          Upload::TypeCdnFile
        end
      end

      class ReuploadCdnFile < TLRequest
        CONSTRUCTOR_ID = 0x9B2754A8

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
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @file_token.tl_serialize(io, true)
          @request_token.tl_serialize(io, true)
        end

        def return_type
          Array(Root::TypeFileHash)
        end
      end

      class GetCdnFileHashes < TLRequest
        CONSTRUCTOR_ID = 0x4DA54231

        getter file_token : Bytes
        getter offset : Int32

        def initialize(
          file_token : Bytes | String | IO,
          offset : Int32
        )
          @file_token = TL::Utils.parse_bytes!(file_token)
          @offset = offset
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @file_token.tl_serialize(io, true)
          @offset.tl_serialize(io, true)
        end

        def return_type
          Array(Root::TypeFileHash)
        end
      end

      class GetFileHashes < TLRequest
        CONSTRUCTOR_ID = 0xC7025931

        getter location : Root::TypeInputFileLocation
        getter offset : Int32

        def initialize(
          location : Root::TypeInputFileLocation,
          offset : Int32
        )
          @location = location
          @offset = offset
        end

        def tl_serialize(io : IO, bare = false)
          CONSTRUCTOR_ID.tl_serialize(io) unless bare
          @location.tl_serialize(io, false)
          @offset.tl_serialize(io, true)
        end

        def return_type
          Array(Root::TypeFileHash)
        end
      end
    end
  end
end
